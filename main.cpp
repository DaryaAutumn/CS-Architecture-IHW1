#include <iostream>
#include <vector>

void PrintArray(const std::vector<int>& arr) {
    for (int i : arr) {
        std::cout << i << " ";
    }
    std::cout << std::endl;
}

int main() {
    std::vector<std::vector<int>> arrays;
    std::vector<int> arr1 = {1, 2, 3, 4, 5};
    arrays.push_back(arr1);

    std::vector<int> arr2 = {2, 0, 0, 4, 20, 8};
    arrays.push_back(arr2);

    std::vector<int> arr3 = {5, 4, 3, 2, 1};
    arrays.push_back(arr3);

    std::vector<int> arr4 = {1};
    arrays.push_back(arr4);

    std::vector<int> arr5 = {4, 45, 34, 2, 31, 5, 4, 3};
    arrays.push_back(arr5);

    std::vector<int> arr6 = {0, 0, 0, 0, 0, 0};
    arrays.push_back(arr6);


    std::vector<int> arrayB;
    for (auto & array : arrays) {
        std::cout << "Array A: ";
        PrintArray(array);
        int cur = array[0];
        for (int j = 1; j < array.size(); ++j) {
            int next = array[j];
            if (next > cur) {
                arrayB.push_back(next);
            }
            cur = next;
        }
        if (arrayB.empty()) {
            std::cout << "No such values in array A!";
            std::cout << std::endl;
        } else {
            std::cout << "Array B: ";
            PrintArray(arrayB);
        }
        std::cout << std::endl;
        arrayB.clear();
    }

}
