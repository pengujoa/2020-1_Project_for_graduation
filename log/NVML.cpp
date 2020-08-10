#include <cstdio>
#include <ctime>
#include </usr/local/cuda-10.1/include/nvml.h>
#include <unistd.h>


int main(int argc, char* argv[])
{
    nvmlReturn_t result;
    unsigned int device_count;
    struct tm curr_tm;
    time_t curr_time;

    //localtime_r(&curr_time, &curr_tm);


    result = nvmlInit();
    if (result != NVML_SUCCESS)
        return 1;
    
    result = nvmlDeviceGetCount(&device_count);
    if (result != NVML_SUCCESS)
        return 2;

    while(1){
	curr_time = time(NULL);
	localtime_r(&curr_time, &curr_tm);
	for (int i = 0; i < device_count; ++i) {
        	nvmlDevice_t device;
      		result = nvmlDeviceGetHandleByIndex(i, &device);
        	if (result != NVML_SUCCESS)
            	return 3;

        	char device_name[NVML_DEVICE_NAME_BUFFER_SIZE];
        	result = nvmlDeviceGetName(device, device_name, NVML_DEVICE_NAME_BUFFER_SIZE);
        	if (result != NVML_SUCCESS)
            		return 4;
		std::printf("%d:%d:%d  ", curr_tm.tm_hour, curr_tm.tm_min, curr_tm.tm_sec);
        	std::printf("Device %d: %s  ", i, device_name);

        	nvmlUtilization_st device_utilization;
        	result = nvmlDeviceGetUtilizationRates(device, &device_utilization);

        	if (result != NVML_SUCCESS)
            		return 5;

        	std::printf("GPU Util: %u  Mem Util: %u\n", device_utilization.gpu, device_utilization.memory);
   	}
	usleep(1000*100);
    }
    nvmlShutdown();
    return 0;
}

