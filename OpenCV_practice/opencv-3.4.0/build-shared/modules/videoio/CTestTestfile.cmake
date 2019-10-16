# CMake generated Testfile for 
# Source directory: /Users/hyunggeunahn/Downloads/opencv-3.4.0/modules/videoio
# Build directory: /Users/hyunggeunahn/Downloads/opencv-3.4.0/build-shared/modules/videoio
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_videoio "/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-shared/bin/opencv_test_videoio" "--gtest_output=xml:opencv_test_videoio.xml")
set_tests_properties(opencv_test_videoio PROPERTIES  LABELS "Main;opencv_videoio;Accuracy" WORKING_DIRECTORY "/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-shared/test-reports/accuracy" _BACKTRACE_TRIPLES "/Users/hyunggeunahn/Downloads/opencv-3.4.0/cmake/OpenCVUtils.cmake;1154;add_test;/Users/hyunggeunahn/Downloads/opencv-3.4.0/cmake/OpenCVModule.cmake;1168;ocv_add_test_from_target;/Users/hyunggeunahn/Downloads/opencv-3.4.0/modules/videoio/CMakeLists.txt;305;ocv_add_accuracy_tests;/Users/hyunggeunahn/Downloads/opencv-3.4.0/modules/videoio/CMakeLists.txt;0;")
add_test(opencv_perf_videoio "/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-shared/bin/opencv_perf_videoio" "--gtest_output=xml:opencv_perf_videoio.xml")
set_tests_properties(opencv_perf_videoio PROPERTIES  LABELS "Main;opencv_videoio;Performance" WORKING_DIRECTORY "/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-shared/test-reports/performance" _BACKTRACE_TRIPLES "/Users/hyunggeunahn/Downloads/opencv-3.4.0/cmake/OpenCVUtils.cmake;1154;add_test;/Users/hyunggeunahn/Downloads/opencv-3.4.0/cmake/OpenCVModule.cmake;1090;ocv_add_test_from_target;/Users/hyunggeunahn/Downloads/opencv-3.4.0/modules/videoio/CMakeLists.txt;306;ocv_add_perf_tests;/Users/hyunggeunahn/Downloads/opencv-3.4.0/modules/videoio/CMakeLists.txt;0;")
add_test(opencv_sanity_videoio "/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-shared/bin/opencv_perf_videoio" "--gtest_output=xml:opencv_perf_videoio.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_videoio PROPERTIES  LABELS "Main;opencv_videoio;Sanity" WORKING_DIRECTORY "/Users/hyunggeunahn/Downloads/opencv-3.4.0/build-shared/test-reports/sanity" _BACKTRACE_TRIPLES "/Users/hyunggeunahn/Downloads/opencv-3.4.0/cmake/OpenCVUtils.cmake;1154;add_test;/Users/hyunggeunahn/Downloads/opencv-3.4.0/cmake/OpenCVModule.cmake;1091;ocv_add_test_from_target;/Users/hyunggeunahn/Downloads/opencv-3.4.0/modules/videoio/CMakeLists.txt;306;ocv_add_perf_tests;/Users/hyunggeunahn/Downloads/opencv-3.4.0/modules/videoio/CMakeLists.txt;0;")