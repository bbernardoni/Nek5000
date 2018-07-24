c-----------------------------------------------------------------------
      subroutine nek_sensei_init()
#ifdef SENSEI
      include 'SIZE'
      include 'TOTAL'
      common /nekmpi/ mid,mp,nekcomm,nekgroup,nekreal

      call sensei_bridge_initialize(nekcomm,
     &       lx1, ly1, lz1, nelt, xm1, ym1, zm1)
#endif
      end
c-----------------------------------------------------------------------
      subroutine nek_sensei_check()
#ifdef SENSEI
      include 'SIZE'
      include 'TOTAL'
c      common /scrcg/ pm1(lx1,ly1,lz1,lelv)

c Might need pm1 instead of pr
      call sensei_bridge_update(istep, time, vx, vy, vz, pr)
#endif
      end
c-----------------------------------------------------------------------
      subroutine nek_sensei_end()
#ifdef SENSEI
      call sensei_bridge_finalize()
#endif
      end
c-----------------------------------------------------------------------

