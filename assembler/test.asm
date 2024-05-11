                LOAD 1
                PUSH
                LOAD 3
                PUSH
                JMP addition
@return         SET y
@end            JMP end






@addition       POP
                SADD
                JMP return