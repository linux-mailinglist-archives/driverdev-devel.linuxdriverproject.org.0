Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 31883F8689
	for <lists+driverdev-devel@lfdr.de>; Tue, 12 Nov 2019 02:41:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1237D8708C;
	Tue, 12 Nov 2019 01:41:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O3W-h8qhS8KF; Tue, 12 Nov 2019 01:41:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7E09C86420;
	Tue, 12 Nov 2019 01:41:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A5A961BF584
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 01:41:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 8A13D862F4
 for <devel@linuxdriverproject.org>; Tue, 12 Nov 2019 01:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FfeqzW03UwgR for <devel@linuxdriverproject.org>;
 Tue, 12 Nov 2019 01:41:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C59AB862E8
 for <devel@driverdev.osuosl.org>; Tue, 12 Nov 2019 01:41:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 17:41:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,294,1569308400"; 
 d="gz'50?scan'50,208,50";a="404083642"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 11 Nov 2019 17:41:19 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1iULBC-000Emt-UK; Tue, 12 Nov 2019 09:41:14 +0800
Date: Tue, 12 Nov 2019 09:40:36 +0800
From: kbuild test robot <lkp@intel.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
Subject: [staging:staging-testing 159/337]
 drivers/staging/octeon/ethernet-tx.c:130:31: error: storage size of
 'pko_command' isn't known
Message-ID: <201911120934.xy0CzxYd%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="minalsygn3ns4xoz"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kbuild-all@lists.01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--minalsygn3ns4xoz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   08283d30744434d8f30d386622372e8f5b03bcf2
commit: 6cc5e1c700316c11b61975af3be8ebcab1e2f8b9 [159/337] staging: octeon: remove typedef declartion for cvmx_pko_command_word0
config: mips-cavium_octeon_defconfig (attached as .config)
compiler: mips64-linux-gcc (GCC) 7.4.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 6cc5e1c700316c11b61975af3be8ebcab1e2f8b9
        # save the attached .config to linux build tree
        GCC_VERSION=7.4.0 make.cross ARCH=mips 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/staging/octeon/ethernet-tx.c:25:0:
   drivers/staging/octeon/octeon-ethernet.h:94:12: warning: 'union cvmx_helper_link_info' declared inside parameter list will not be visible outside of this definition or declaration
         union cvmx_helper_link_info li);
               ^~~~~~~~~~~~~~~~~~~~~
   drivers/staging/octeon/ethernet-tx.c: In function 'cvm_oct_xmit':
>> drivers/staging/octeon/ethernet-tx.c:130:31: error: storage size of 'pko_command' isn't known
     union cvmx_pko_command_word0 pko_command;
                                  ^~~~~~~~~~~
   drivers/staging/octeon/ethernet-tx.c:130:31: warning: unused variable 'pko_command' [-Wunused-variable]
   drivers/staging/octeon/ethernet-tx.c: In function 'cvm_oct_xmit_pow':
   drivers/staging/octeon/ethernet-tx.c:562:7: error: dereferencing pointer to incomplete type 'struct cvmx_wqe'
      work->word0.pip.cn38xx.hw_chksum = skb->csum;
          ^~
   drivers/staging/octeon/ethernet-tx.c:564:20: error: passing argument 1 of 'cvmx_wqe_set_port' from incompatible pointer type [-Werror=incompatible-pointer-types]
     cvmx_wqe_set_port(work, priv->port);
                       ^~~~
   In file included from arch/mips/include/asm/octeon/cvmx-helper.h:39:0,
                    from drivers/staging/octeon/octeon-ethernet.h:25,
                    from drivers/staging/octeon/ethernet-tx.c:25:
   arch/mips/include/asm/octeon/cvmx-wqe.h:610:20: note: expected 'cvmx_wqe_t * {aka struct <anonymous> *}' but argument is of type 'struct cvmx_wqe *'
    static inline void cvmx_wqe_set_port(cvmx_wqe_t *work, int port)
                       ^~~~~~~~~~~~~~~~~
   drivers/staging/octeon/ethernet-tx.c:565:19: error: passing argument 1 of 'cvmx_wqe_set_qos' from incompatible pointer type [-Werror=incompatible-pointer-types]
     cvmx_wqe_set_qos(work, priv->port & 0x7);
                      ^~~~
   In file included from arch/mips/include/asm/octeon/cvmx-helper.h:39:0,
                    from drivers/staging/octeon/octeon-ethernet.h:25,
                    from drivers/staging/octeon/ethernet-tx.c:25:
   arch/mips/include/asm/octeon/cvmx-wqe.h:650:20: note: expected 'cvmx_wqe_t * {aka struct <anonymous> *}' but argument is of type 'struct cvmx_wqe *'
    static inline void cvmx_wqe_set_qos(cvmx_wqe_t *work, int qos)
                       ^~~~~~~~~~~~~~~~
   drivers/staging/octeon/ethernet-tx.c:566:19: error: passing argument 1 of 'cvmx_wqe_set_grp' from incompatible pointer type [-Werror=incompatible-pointer-types]
     cvmx_wqe_set_grp(work, pow_send_group);
                      ^~~~
   In file included from arch/mips/include/asm/octeon/cvmx-helper.h:39:0,
                    from drivers/staging/octeon/octeon-ethernet.h:25,
                    from drivers/staging/octeon/ethernet-tx.c:25:
   arch/mips/include/asm/octeon/cvmx-wqe.h:630:20: note: expected 'cvmx_wqe_t * {aka struct <anonymous> *}' but argument is of type 'struct cvmx_wqe *'
    static inline void cvmx_wqe_set_grp(cvmx_wqe_t *work, int grp)
                       ^~~~~~~~~~~~~~~~
   drivers/staging/octeon/ethernet-tx.c:649:26: error: passing argument 1 of 'cvmx_wqe_get_qos' from incompatible pointer type [-Werror=incompatible-pointer-types]
            cvmx_wqe_get_qos(work), cvmx_wqe_get_grp(work));
                             ^~~~
   In file included from arch/mips/include/asm/octeon/cvmx-helper.h:39:0,
                    from drivers/staging/octeon/octeon-ethernet.h:25,
                    from drivers/staging/octeon/ethernet-tx.c:25:
   arch/mips/include/asm/octeon/cvmx-wqe.h:638:19: note: expected 'cvmx_wqe_t * {aka struct <anonymous> *}' but argument is of type 'struct cvmx_wqe *'
    static inline int cvmx_wqe_get_qos(cvmx_wqe_t *work)
                      ^~~~~~~~~~~~~~~~
   drivers/staging/octeon/ethernet-tx.c:649:50: error: passing argument 1 of 'cvmx_wqe_get_grp' from incompatible pointer type [-Werror=incompatible-pointer-types]
            cvmx_wqe_get_qos(work), cvmx_wqe_get_grp(work));
                                                     ^~~~
   In file included from arch/mips/include/asm/octeon/cvmx-helper.h:39:0,
                    from drivers/staging/octeon/octeon-ethernet.h:25,
                    from drivers/staging/octeon/ethernet-tx.c:25:
   arch/mips/include/asm/octeon/cvmx-wqe.h:618:19: note: expected 'cvmx_wqe_t * {aka struct <anonymous> *}' but argument is of type 'struct cvmx_wqe *'
    static inline int cvmx_wqe_get_grp(cvmx_wqe_t *work)
                      ^~~~~~~~~~~~~~~~
   drivers/staging/octeon/ethernet-tx.c:648:23: error: passing argument 1 of 'cvmx_pow_work_submit' from incompatible pointer type [-Werror=incompatible-pointer-types]
     cvmx_pow_work_submit(work, work->word1.tag, work->word1.tag_type,
                          ^~~~
   In file included from arch/mips/include/asm/octeon/cvmx-pko.h:62:0,
                    from drivers/staging/octeon/octeon-ethernet.h:31,
                    from drivers/staging/octeon/ethernet-tx.c:25:
   arch/mips/include/asm/octeon/cvmx-pow.h:1806:20: note: expected 'cvmx_wqe_t * {aka struct <anonymous> *}' but argument is of type 'struct cvmx_wqe *'
    static inline void cvmx_pow_work_submit(cvmx_wqe_t *wqp, uint32_t tag,
                       ^~~~~~~~~~~~~~~~~~~~
   cc1: some warnings being treated as errors

vim +130 drivers/staging/octeon/ethernet-tx.c

    24	
  > 25	#include "octeon-ethernet.h"
    26	#include "ethernet-defines.h"
    27	#include "ethernet-tx.h"
    28	#include "ethernet-util.h"
    29	
    30	#define CVM_OCT_SKB_CB(skb)	((u64 *)((skb)->cb))
    31	
    32	/*
    33	 * You can define GET_SKBUFF_QOS() to override how the skbuff output
    34	 * function determines which output queue is used. The default
    35	 * implementation always uses the base queue for the port. If, for
    36	 * example, you wanted to use the skb->priority field, define
    37	 * GET_SKBUFF_QOS as: #define GET_SKBUFF_QOS(skb) ((skb)->priority)
    38	 */
    39	#ifndef GET_SKBUFF_QOS
    40	#define GET_SKBUFF_QOS(skb) 0
    41	#endif
    42	
    43	static void cvm_oct_tx_do_cleanup(unsigned long arg);
    44	static DECLARE_TASKLET(cvm_oct_tx_cleanup_tasklet, cvm_oct_tx_do_cleanup, 0);
    45	
    46	/* Maximum number of SKBs to try to free per xmit packet. */
    47	#define MAX_SKB_TO_FREE (MAX_OUT_QUEUE_DEPTH * 2)
    48	
    49	static inline int cvm_oct_adjust_skb_to_free(int skb_to_free, int fau)
    50	{
    51		int undo;
    52	
    53		undo = skb_to_free > 0 ? MAX_SKB_TO_FREE : skb_to_free +
    54							   MAX_SKB_TO_FREE;
    55		if (undo > 0)
    56			cvmx_fau_atomic_add32(fau, -undo);
    57		skb_to_free = -skb_to_free > MAX_SKB_TO_FREE ? MAX_SKB_TO_FREE :
    58							       -skb_to_free;
    59		return skb_to_free;
    60	}
    61	
    62	static void cvm_oct_kick_tx_poll_watchdog(void)
    63	{
    64		union cvmx_ciu_timx ciu_timx;
    65	
    66		ciu_timx.u64 = 0;
    67		ciu_timx.s.one_shot = 1;
    68		ciu_timx.s.len = cvm_oct_tx_poll_interval;
    69		cvmx_write_csr(CVMX_CIU_TIMX(1), ciu_timx.u64);
    70	}
    71	
    72	static void cvm_oct_free_tx_skbs(struct net_device *dev)
    73	{
    74		int skb_to_free;
    75		int qos, queues_per_port;
    76		int total_freed = 0;
    77		int total_remaining = 0;
    78		unsigned long flags;
    79		struct octeon_ethernet *priv = netdev_priv(dev);
    80	
    81		queues_per_port = cvmx_pko_get_num_queues(priv->port);
    82		/* Drain any pending packets in the free list */
    83		for (qos = 0; qos < queues_per_port; qos++) {
    84			if (skb_queue_len(&priv->tx_free_list[qos]) == 0)
    85				continue;
    86			skb_to_free = cvmx_fau_fetch_and_add32(priv->fau + qos * 4,
    87							       MAX_SKB_TO_FREE);
    88			skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
    89								 priv->fau + qos * 4);
    90			total_freed += skb_to_free;
    91			if (skb_to_free > 0) {
    92				struct sk_buff *to_free_list = NULL;
    93	
    94				spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
    95				while (skb_to_free > 0) {
    96					struct sk_buff *t;
    97	
    98					t = __skb_dequeue(&priv->tx_free_list[qos]);
    99					t->next = to_free_list;
   100					to_free_list = t;
   101					skb_to_free--;
   102				}
   103				spin_unlock_irqrestore(&priv->tx_free_list[qos].lock,
   104						       flags);
   105				/* Do the actual freeing outside of the lock. */
   106				while (to_free_list) {
   107					struct sk_buff *t = to_free_list;
   108	
   109					to_free_list = to_free_list->next;
   110					dev_kfree_skb_any(t);
   111				}
   112			}
   113			total_remaining += skb_queue_len(&priv->tx_free_list[qos]);
   114		}
   115		if (total_remaining < MAX_OUT_QUEUE_DEPTH && netif_queue_stopped(dev))
   116			netif_wake_queue(dev);
   117		if (total_remaining)
   118			cvm_oct_kick_tx_poll_watchdog();
   119	}
   120	
   121	/**
   122	 * cvm_oct_xmit - transmit a packet
   123	 * @skb:    Packet to send
   124	 * @dev:    Device info structure
   125	 *
   126	 * Returns Always returns NETDEV_TX_OK
   127	 */
   128	int cvm_oct_xmit(struct sk_buff *skb, struct net_device *dev)
   129	{
 > 130		union cvmx_pko_command_word0 pko_command;
   131		union cvmx_buf_ptr hw_buffer;
   132		u64 old_scratch;
   133		u64 old_scratch2;
   134		int qos;
   135		int i;
   136		enum {QUEUE_CORE, QUEUE_HW, QUEUE_DROP} queue_type;
   137		struct octeon_ethernet *priv = netdev_priv(dev);
   138		struct sk_buff *to_free_list;
   139		int skb_to_free;
   140		int buffers_to_free;
   141		u32 total_to_clean;
   142		unsigned long flags;
   143	#if REUSE_SKBUFFS_WITHOUT_FREE
   144		unsigned char *fpa_head;
   145	#endif
   146	
   147		/*
   148		 * Prefetch the private data structure.  It is larger than the
   149		 * one cache line.
   150		 */
   151		prefetch(priv);
   152	
   153		/*
   154		 * The check on CVMX_PKO_QUEUES_PER_PORT_* is designed to
   155		 * completely remove "qos" in the event neither interface
   156		 * supports multiple queues per port.
   157		 */
   158		if ((CVMX_PKO_QUEUES_PER_PORT_INTERFACE0 > 1) ||
   159		    (CVMX_PKO_QUEUES_PER_PORT_INTERFACE1 > 1)) {
   160			qos = GET_SKBUFF_QOS(skb);
   161			if (qos <= 0)
   162				qos = 0;
   163			else if (qos >= cvmx_pko_get_num_queues(priv->port))
   164				qos = 0;
   165		} else {
   166			qos = 0;
   167		}
   168	
   169		if (USE_ASYNC_IOBDMA) {
   170			/* Save scratch in case userspace is using it */
   171			CVMX_SYNCIOBDMA;
   172			old_scratch = cvmx_scratch_read64(CVMX_SCR_SCRATCH);
   173			old_scratch2 = cvmx_scratch_read64(CVMX_SCR_SCRATCH + 8);
   174	
   175			/*
   176			 * Fetch and increment the number of packets to be
   177			 * freed.
   178			 */
   179			cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH + 8,
   180						       FAU_NUM_PACKET_BUFFERS_TO_FREE,
   181						       0);
   182			cvmx_fau_async_fetch_and_add32(CVMX_SCR_SCRATCH,
   183						       priv->fau + qos * 4,
   184						       MAX_SKB_TO_FREE);
   185		}
   186	
   187		/*
   188		 * We have space for 6 segment pointers, If there will be more
   189		 * than that, we must linearize.
   190		 */
   191		if (unlikely(skb_shinfo(skb)->nr_frags > 5)) {
   192			if (unlikely(__skb_linearize(skb))) {
   193				queue_type = QUEUE_DROP;
   194				if (USE_ASYNC_IOBDMA) {
   195					/*
   196					 * Get the number of skbuffs in use
   197					 * by the hardware
   198					 */
   199					CVMX_SYNCIOBDMA;
   200					skb_to_free =
   201						cvmx_scratch_read64(CVMX_SCR_SCRATCH);
   202				} else {
   203					/*
   204					 * Get the number of skbuffs in use
   205					 * by the hardware
   206					 */
   207					skb_to_free =
   208					     cvmx_fau_fetch_and_add32(priv->fau +
   209								      qos * 4,
   210								      MAX_SKB_TO_FREE);
   211				}
   212				skb_to_free = cvm_oct_adjust_skb_to_free(skb_to_free,
   213									 priv->fau +
   214									 qos * 4);
   215				spin_lock_irqsave(&priv->tx_free_list[qos].lock, flags);
   216				goto skip_xmit;
   217			}
   218		}
   219	
   220		/*
   221		 * The CN3XXX series of parts has an errata (GMX-401) which
   222		 * causes the GMX block to hang if a collision occurs towards
   223		 * the end of a <68 byte packet. As a workaround for this, we
   224		 * pad packets to be 68 bytes whenever we are in half duplex
   225		 * mode. We don't handle the case of having a small packet but
   226		 * no room to add the padding.  The kernel should always give
   227		 * us at least a cache line
   228		 */
   229		if ((skb->len < 64) && OCTEON_IS_MODEL(OCTEON_CN3XXX)) {
   230			union cvmx_gmxx_prtx_cfg gmx_prt_cfg;
   231			int interface = INTERFACE(priv->port);
   232			int index = INDEX(priv->port);
   233	
   234			if (interface < 2) {
   235				/* We only need to pad packet in half duplex mode */
   236				gmx_prt_cfg.u64 =
   237				    cvmx_read_csr(CVMX_GMXX_PRTX_CFG(index, interface));
   238				if (gmx_prt_cfg.s.duplex == 0) {
   239					int add_bytes = 64 - skb->len;
   240	
   241					if ((skb_tail_pointer(skb) + add_bytes) <=
   242					    skb_end_pointer(skb))
   243						__skb_put_zero(skb, add_bytes);
   244				}
   245			}
   246		}
   247	
   248		/* Build the PKO command */
   249		pko_command.u64 = 0;
   250	#ifdef __LITTLE_ENDIAN
   251		pko_command.s.le = 1;
   252	#endif
   253		pko_command.s.n2 = 1;	/* Don't pollute L2 with the outgoing packet */
   254		pko_command.s.segs = 1;
   255		pko_command.s.total_bytes = skb->len;
   256		pko_command.s.size0 = CVMX_FAU_OP_SIZE_32;
   257		pko_command.s.subone0 = 1;
   258	
   259		pko_command.s.dontfree = 1;
   260	
   261		/* Build the PKO buffer pointer */
   262		hw_buffer.u64 = 0;
   263		if (skb_shinfo(skb)->nr_frags == 0) {
   264			hw_buffer.s.addr = XKPHYS_TO_PHYS((uintptr_t)skb->data);
   265			hw_buffer.s.pool = 0;
   266			hw_buffer.s.size = skb->len;
   267		} else {
   268			hw_buffer.s.addr = XKPHYS_TO_PHYS((uintptr_t)skb->data);
   269			hw_buffer.s.pool = 0;
   270			hw_buffer.s.size = skb_headlen(skb);
   271			CVM_OCT_SKB_CB(skb)[0] = hw_buffer.u64;
   272			for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
   273				skb_frag_t *fs = skb_shinfo(skb)->frags + i;
   274	
   275				hw_buffer.s.addr =
   276					XKPHYS_TO_PHYS((uintptr_t)skb_frag_address(fs));
   277				hw_buffer.s.size = skb_frag_size(fs);
   278				CVM_OCT_SKB_CB(skb)[i + 1] = hw_buffer.u64;
   279			}
   280			hw_buffer.s.addr =
   281				XKPHYS_TO_PHYS((uintptr_t)CVM_OCT_SKB_CB(skb));
   282			hw_buffer.s.size = skb_shinfo(skb)->nr_frags + 1;
   283			pko_command.s.segs = skb_shinfo(skb)->nr_frags + 1;
   284			pko_command.s.gather = 1;
   285			goto dont_put_skbuff_in_hw;
   286		}
   287	
   288		/*
   289		 * See if we can put this skb in the FPA pool. Any strange
   290		 * behavior from the Linux networking stack will most likely
   291		 * be caused by a bug in the following code. If some field is
   292		 * in use by the network stack and gets carried over when a
   293		 * buffer is reused, bad things may happen.  If in doubt and
   294		 * you dont need the absolute best performance, disable the
   295		 * define REUSE_SKBUFFS_WITHOUT_FREE. The reuse of buffers has
   296		 * shown a 25% increase in performance under some loads.
   297		 */
   298	#if REUSE_SKBUFFS_WITHOUT_FREE
   299		fpa_head = skb->head + 256 - ((unsigned long)skb->head & 0x7f);
   300		if (unlikely(skb->data < fpa_head)) {
   301			/* TX buffer beginning can't meet FPA alignment constraints */
   302			goto dont_put_skbuff_in_hw;
   303		}
   304		if (unlikely
   305		    ((skb_end_pointer(skb) - fpa_head) < CVMX_FPA_PACKET_POOL_SIZE)) {
   306			/* TX buffer isn't large enough for the FPA */
   307			goto dont_put_skbuff_in_hw;
   308		}
   309		if (unlikely(skb_shared(skb))) {
   310			/* TX buffer sharing data with someone else */
   311			goto dont_put_skbuff_in_hw;
   312		}
   313		if (unlikely(skb_cloned(skb))) {
   314			/* TX buffer has been cloned */
   315			goto dont_put_skbuff_in_hw;
   316		}
   317		if (unlikely(skb_header_cloned(skb))) {
   318			/* TX buffer header has been cloned */
   319			goto dont_put_skbuff_in_hw;
   320		}
   321		if (unlikely(skb->destructor)) {
   322			/* TX buffer has a destructor */
   323			goto dont_put_skbuff_in_hw;
   324		}
   325		if (unlikely(skb_shinfo(skb)->nr_frags)) {
   326			/* TX buffer has fragments */
   327			goto dont_put_skbuff_in_hw;
   328		}
   329		if (unlikely
   330		    (skb->truesize !=
   331		     sizeof(*skb) + skb_end_offset(skb))) {
   332			/* TX buffer truesize has been changed */
   333			goto dont_put_skbuff_in_hw;
   334		}
   335	
   336		/*
   337		 * We can use this buffer in the FPA.  We don't need the FAU
   338		 * update anymore
   339		 */
   340		pko_command.s.dontfree = 0;
   341	
   342		hw_buffer.s.back = ((unsigned long)skb->data >> 7) -
   343				   ((unsigned long)fpa_head >> 7);
   344	
   345		*(struct sk_buff **)(fpa_head - sizeof(void *)) = skb;
   346	
   347		/*
   348		 * The skbuff will be reused without ever being freed. We must
   349		 * cleanup a bunch of core things.
   350		 */
   351		dst_release(skb_dst(skb));
   352		skb_dst_set(skb, NULL);
   353		skb_ext_reset(skb);
   354		nf_reset_ct(skb);
   355	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--minalsygn3ns4xoz
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
hUnqOCUBAA==

--minalsygn3ns4xoz
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--minalsygn3ns4xoz--
