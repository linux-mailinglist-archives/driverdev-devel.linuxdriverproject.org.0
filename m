Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A77A71EBEB3
	for <lists+driverdev-devel@lfdr.de>; Tue,  2 Jun 2020 17:05:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 18A64878EA;
	Tue,  2 Jun 2020 15:05:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5Rox6G2GoJ4u; Tue,  2 Jun 2020 15:05:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1EE63878C2;
	Tue,  2 Jun 2020 15:05:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1D9941BF3A6
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 15:05:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0C126878C1
 for <devel@linuxdriverproject.org>; Tue,  2 Jun 2020 15:05:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B07GT34P4PEM for <devel@linuxdriverproject.org>;
 Tue,  2 Jun 2020 15:05:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BB57C87722
 for <devel@driverdev.osuosl.org>; Tue,  2 Jun 2020 15:05:31 +0000 (UTC)
IronPort-SDR: U5doe1VNvJCc1Ha/qRZlQtww1y63aktq4NzEZlxaU6wMJOiJQe0Fd/L3Fmt5eDUZ4Gj7N8JZs7
 eKDHIIJUM+9g==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2020 08:05:16 -0700
IronPort-SDR: fdg2O4JSRMR0F30QlhGX8PbDC3dJwcei670QkTyfKLyKIZguyNW6ITFGQ0SK+e6oKuBqHI1ocY
 wGWiq5kq+Vng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,464,1583222400"; 
 d="gz'50?scan'50,208,50";a="470749973"
Received: from lkp-server02.sh.intel.com (HELO 351640f61962) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 02 Jun 2020 08:05:13 -0700
Received: from kbuild by 351640f61962 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jg8TY-00000z-Vr; Tue, 02 Jun 2020 15:05:12 +0000
Date: Tue, 2 Jun 2020 23:04:46 +0800
From: kbuild test robot <lkp@intel.com>
To: Pascal Terjan <pterjan@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8712: switch to common ieee80211 headers
Message-ID: <202006022221.WRLp69l5%lkp@intel.com>
References: <20200601202410.124593-1-pterjan@google.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="pf9I7BMVVzbSWLtt"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200601202410.124593-1-pterjan@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Pascal Terjan <pterjan@google.com>, kbuild-all@lists.01.org
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Pascal,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on staging/staging-testing]
[also build test ERROR on next-20200602]
[cannot apply to v5.7]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Pascal-Terjan/staging-rtl8712-switch-to-common-ieee80211-headers/20200602-042517
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git 77f55d1305c11fb729b88f2c3f7881ba0831fa6f
config: i386-randconfig-a011-20200602 (attached as .config)
compiler: gcc-9 (Debian 9.3.0-13) 9.3.0
reproduce (this is a W=1 build):
        # save the attached .config to linux build tree
        make W=1 ARCH=i386 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>, old ones prefixed by <<):

ld: drivers/staging/rtl8712/rtl8712_recv.o: in function `amsdu_to_msdu':
>> drivers/staging/rtl8712/rtl8712_recv.c:377: undefined reference to `bridge_tunnel_header'
>> ld: drivers/staging/rtl8712/rtl8712_recv.c:375: undefined reference to `rfc1042_header'
>> ld: drivers/staging/rtl8712/rtl8712_recv.c:377: undefined reference to `bridge_tunnel_header'
>> ld: drivers/staging/rtl8712/rtl8712_recv.c:375: undefined reference to `rfc1042_header'
ld: drivers/staging/rtl8712/rtl871x_recv.o: in function `r8712_wlanhdr_to_ethhdr':
>> drivers/staging/rtl8712/rtl871x_recv.c:603: undefined reference to `rfc1042_header'
>> ld: drivers/staging/rtl8712/rtl871x_recv.c:606: undefined reference to `bridge_tunnel_header'
>> ld: drivers/staging/rtl8712/rtl871x_recv.c:603: undefined reference to `rfc1042_header'
>> ld: drivers/staging/rtl8712/rtl871x_recv.c:606: undefined reference to `bridge_tunnel_header'

vim +377 drivers/staging/rtl8712/rtl8712_recv.c

2865d42c78a912 Larry Finger        2010-08-20  314  
fc898688aa37c0 Nishka Dasgupta     2019-08-08  315  static void amsdu_to_msdu(struct _adapter *padapter, union recv_frame *prframe)
2865d42c78a912 Larry Finger        2010-08-20  316  {
2865d42c78a912 Larry Finger        2010-08-20  317  	int	a_len, padding_len;
2865d42c78a912 Larry Finger        2010-08-20  318  	u16	eth_type, nSubframe_Length;
2865d42c78a912 Larry Finger        2010-08-20  319  	u8	nr_subframes, i;
b952f4dff27512 yuan linyu          2017-06-18  320  	unsigned char *pdata;
2865d42c78a912 Larry Finger        2010-08-20  321  	struct rx_pkt_attrib *pattrib;
2865d42c78a912 Larry Finger        2010-08-20  322  	_pkt *sub_skb, *subframes[MAX_SUBFRAME_COUNT];
2865d42c78a912 Larry Finger        2010-08-20  323  	struct recv_priv *precvpriv = &padapter->recvpriv;
2865d42c78a912 Larry Finger        2010-08-20  324  	struct  __queue *pfree_recv_queue = &(precvpriv->free_recv_queue);
2865d42c78a912 Larry Finger        2010-08-20  325  
2865d42c78a912 Larry Finger        2010-08-20  326  	nr_subframes = 0;
2865d42c78a912 Larry Finger        2010-08-20  327  	pattrib = &prframe->u.hdr.attrib;
2865d42c78a912 Larry Finger        2010-08-20  328  	recvframe_pull(prframe, prframe->u.hdr.attrib.hdrlen);
2865d42c78a912 Larry Finger        2010-08-20  329  	if (prframe->u.hdr.attrib.iv_len > 0)
2865d42c78a912 Larry Finger        2010-08-20  330  		recvframe_pull(prframe, prframe->u.hdr.attrib.iv_len);
2865d42c78a912 Larry Finger        2010-08-20  331  	a_len = prframe->u.hdr.len;
2865d42c78a912 Larry Finger        2010-08-20  332  	pdata = prframe->u.hdr.rx_data;
2865d42c78a912 Larry Finger        2010-08-20  333  	while (a_len > ETH_HLEN) {
2865d42c78a912 Larry Finger        2010-08-20  334  		/* Offset 12 denote 2 mac address */
2865d42c78a912 Larry Finger        2010-08-20  335  		nSubframe_Length = *((u16 *)(pdata + 12));
2865d42c78a912 Larry Finger        2010-08-20  336  		/*==m==>change the length order*/
2865d42c78a912 Larry Finger        2010-08-20  337  		nSubframe_Length = (nSubframe_Length >> 8) +
2865d42c78a912 Larry Finger        2010-08-20  338  				   (nSubframe_Length << 8);
2865d42c78a912 Larry Finger        2010-08-20  339  		if (a_len < (ETHERNET_HEADER_SIZE + nSubframe_Length)) {
87a573ada017b4 Przemo Firszt       2012-12-10  340  			netdev_warn(padapter->pnetdev, "r8712u: nRemain_Length is %d and nSubframe_Length is: %d\n",
2865d42c78a912 Larry Finger        2010-08-20  341  				    a_len, nSubframe_Length);
2865d42c78a912 Larry Finger        2010-08-20  342  			goto exit;
2865d42c78a912 Larry Finger        2010-08-20  343  		}
2865d42c78a912 Larry Finger        2010-08-20  344  		/* move the data point to data content */
2865d42c78a912 Larry Finger        2010-08-20  345  		pdata += ETH_HLEN;
2865d42c78a912 Larry Finger        2010-08-20  346  		a_len -= ETH_HLEN;
2865d42c78a912 Larry Finger        2010-08-20  347  		/* Allocate new skb for releasing to upper layer */
2865d42c78a912 Larry Finger        2010-08-20  348  		sub_skb = dev_alloc_skb(nSubframe_Length + 12);
5ca136a0cb96aa Larry Finger        2012-08-28  349  		if (!sub_skb)
5ca136a0cb96aa Larry Finger        2012-08-28  350  			break;
2865d42c78a912 Larry Finger        2010-08-20  351  		skb_reserve(sub_skb, 12);
b952f4dff27512 yuan linyu          2017-06-18  352  		skb_put_data(sub_skb, pdata, nSubframe_Length);
2865d42c78a912 Larry Finger        2010-08-20  353  		subframes[nr_subframes++] = sub_skb;
2865d42c78a912 Larry Finger        2010-08-20  354  		if (nr_subframes >= MAX_SUBFRAME_COUNT) {
87a573ada017b4 Przemo Firszt       2012-12-10  355  			netdev_warn(padapter->pnetdev, "r8712u: ParseSubframe(): Too many Subframes! Packets dropped!\n");
2865d42c78a912 Larry Finger        2010-08-20  356  			break;
2865d42c78a912 Larry Finger        2010-08-20  357  		}
2865d42c78a912 Larry Finger        2010-08-20  358  		pdata += nSubframe_Length;
2865d42c78a912 Larry Finger        2010-08-20  359  		a_len -= nSubframe_Length;
2865d42c78a912 Larry Finger        2010-08-20  360  		if (a_len != 0) {
2865d42c78a912 Larry Finger        2010-08-20  361  			padding_len = 4 - ((nSubframe_Length + ETH_HLEN) & 3);
2865d42c78a912 Larry Finger        2010-08-20  362  			if (padding_len == 4)
2865d42c78a912 Larry Finger        2010-08-20  363  				padding_len = 0;
2865d42c78a912 Larry Finger        2010-08-20  364  			if (a_len < padding_len)
2865d42c78a912 Larry Finger        2010-08-20  365  				goto exit;
2865d42c78a912 Larry Finger        2010-08-20  366  			pdata += padding_len;
2865d42c78a912 Larry Finger        2010-08-20  367  			a_len -= padding_len;
2865d42c78a912 Larry Finger        2010-08-20  368  		}
2865d42c78a912 Larry Finger        2010-08-20  369  	}
2865d42c78a912 Larry Finger        2010-08-20  370  	for (i = 0; i < nr_subframes; i++) {
2865d42c78a912 Larry Finger        2010-08-20  371  		sub_skb = subframes[i];
2865d42c78a912 Larry Finger        2010-08-20  372  		/* convert hdr + possible LLC headers into Ethernet header */
2865d42c78a912 Larry Finger        2010-08-20  373  		eth_type = (sub_skb->data[6] << 8) | sub_skb->data[7];
2865d42c78a912 Larry Finger        2010-08-20  374  		if (sub_skb->len >= 8 &&
2865d42c78a912 Larry Finger        2010-08-20 @375  		    ((!memcmp(sub_skb->data, rfc1042_header, SNAP_SIZE) &&
2865d42c78a912 Larry Finger        2010-08-20  376  		      eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) ||
2865d42c78a912 Larry Finger        2010-08-20 @377  		     !memcmp(sub_skb->data, bridge_tunnel_header, SNAP_SIZE))) {
2865d42c78a912 Larry Finger        2010-08-20  378  			/* remove RFC1042 or Bridge-Tunnel encapsulation and
bef611a92ee2d1 Raphaël Beamonte    2016-09-09  379  			 * replace EtherType
bef611a92ee2d1 Raphaël Beamonte    2016-09-09  380  			 */
2865d42c78a912 Larry Finger        2010-08-20  381  			skb_pull(sub_skb, SNAP_SIZE);
2865d42c78a912 Larry Finger        2010-08-20  382  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
2865d42c78a912 Larry Finger        2010-08-20  383  			       ETH_ALEN);
2865d42c78a912 Larry Finger        2010-08-20  384  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
2865d42c78a912 Larry Finger        2010-08-20  385  			       ETH_ALEN);
2865d42c78a912 Larry Finger        2010-08-20  386  		} else {
16b8852fa32106 Jannik Becher       2016-12-20  387  			__be16 len;
2865d42c78a912 Larry Finger        2010-08-20  388  			/* Leave Ethernet header part of hdr and full payload */
2865d42c78a912 Larry Finger        2010-08-20  389  			len = htons(sub_skb->len);
2865d42c78a912 Larry Finger        2010-08-20  390  			memcpy(skb_push(sub_skb, 2), &len, 2);
2865d42c78a912 Larry Finger        2010-08-20  391  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->src,
2865d42c78a912 Larry Finger        2010-08-20  392  			       ETH_ALEN);
2865d42c78a912 Larry Finger        2010-08-20  393  			memcpy(skb_push(sub_skb, ETH_ALEN), pattrib->dst,
2865d42c78a912 Larry Finger        2010-08-20  394  			       ETH_ALEN);
2865d42c78a912 Larry Finger        2010-08-20  395  		}
2865d42c78a912 Larry Finger        2010-08-20  396  		/* Indicate the packets to upper layer */
2865d42c78a912 Larry Finger        2010-08-20  397  		if (sub_skb) {
2865d42c78a912 Larry Finger        2010-08-20  398  			sub_skb->protocol =
2865d42c78a912 Larry Finger        2010-08-20  399  				 eth_type_trans(sub_skb, padapter->pnetdev);
2865d42c78a912 Larry Finger        2010-08-20  400  			sub_skb->dev = padapter->pnetdev;
2865d42c78a912 Larry Finger        2010-08-20  401  			if ((pattrib->tcpchk_valid == 1) &&
2865d42c78a912 Larry Finger        2010-08-20  402  			    (pattrib->tcp_chkrpt == 1)) {
2865d42c78a912 Larry Finger        2010-08-20  403  				sub_skb->ip_summed = CHECKSUM_UNNECESSARY;
168a2c10288d78 Luis de Bethencourt 2015-10-19  404  			} else {
2865d42c78a912 Larry Finger        2010-08-20  405  				sub_skb->ip_summed = CHECKSUM_NONE;
168a2c10288d78 Luis de Bethencourt 2015-10-19  406  			}
2865d42c78a912 Larry Finger        2010-08-20  407  			netif_rx(sub_skb);
2865d42c78a912 Larry Finger        2010-08-20  408  		}
2865d42c78a912 Larry Finger        2010-08-20  409  	}
2865d42c78a912 Larry Finger        2010-08-20  410  exit:
2865d42c78a912 Larry Finger        2010-08-20  411  	prframe->u.hdr.len = 0;
2865d42c78a912 Larry Finger        2010-08-20  412  	r8712_free_recvframe(prframe, pfree_recv_queue);
2865d42c78a912 Larry Finger        2010-08-20  413  }
2865d42c78a912 Larry Finger        2010-08-20  414  

:::::: The code at line 377 was first introduced by commit
:::::: 2865d42c78a9121caad52cb02d1fbb7f5cdbc4ef staging: r8712u: Add the new driver to the mainline kernel

:::::: TO: Larry Finger <Larry.Finger@lwfinger.net>
:::::: CC: Larry Finger <Larry.Finger@lwfinger.net>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--pf9I7BMVVzbSWLtt
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
QVK8jLvLAQA=

--pf9I7BMVVzbSWLtt
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--pf9I7BMVVzbSWLtt--
