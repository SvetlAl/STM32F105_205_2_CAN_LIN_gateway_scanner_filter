#ifndef PARSEFILTER_H
#define PARSEFILTER_H

struct ParseFilter{
    bool m_can1 = true;
    bool m_can2 = true;

    bool use_range = false;
    int start_id = 0x00000;
    int end_id = 0x1FFFFFFF;
};

#endif
