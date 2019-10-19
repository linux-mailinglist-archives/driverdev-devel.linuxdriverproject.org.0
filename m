Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2F7DDDAD6
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Oct 2019 22:18:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B4396869E1;
	Sat, 19 Oct 2019 20:18:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id joGrb5klabvu; Sat, 19 Oct 2019 20:18:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 82DE0863D9;
	Sat, 19 Oct 2019 20:18:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 956901BF5B4
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 20:17:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 907DC863D9
 for <devel@linuxdriverproject.org>; Sat, 19 Oct 2019 20:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RH-HN3JWqChK for <devel@linuxdriverproject.org>;
 Sat, 19 Oct 2019 20:17:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0242.hostedemail.com
 [216.40.44.242])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C6E7A863E8
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 20:17:52 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave08.hostedemail.com (Postfix) with ESMTP id 80E7C18021D90
 for <devel@driverdev.osuosl.org>; Sat, 19 Oct 2019 20:02:36 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id E10B9181D2FC1;
 Sat, 19 Oct 2019 20:02:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, :::::::::::,
 RULES_HIT:1:41:355:379:599:960:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1593:1594:1605:1730:1747:1777:1792:2194:2199:2393:2553:2559:2562:2637:2692:2693:2828:2895:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3873:3874:4250:4321:5007:6119:7875:7903:8828:8957:9038:9108:10004:10848:11026:11232:11473:11657:11658:11914:12043:12050:12295:12296:12297:12438:12555:12731:12737:12740:12760:12895:13141:13149:13230:13439:14096:14097:14659:21080:21324:21451:21627:21740:21810:21939:30012:30046:30054:30070:30075:30090:30091,
 0,
 RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.14.0.100 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:24,
 LUA_SUMMARY:none
X-HE-Tag: pig59_33562b54e1f19
X-Filterd-Recvd-Size: 12928
Received: from XPS-9350.home (unknown [47.151.135.224])
 (Authenticated sender: joe@perches.com)
 by omf20.hostedemail.com (Postfix) with ESMTPA;
 Sat, 19 Oct 2019 20:02:32 +0000 (UTC)
Message-ID: <336960fdf88dbed69dd3ed2689a5fb1d2892ace8.camel@perches.com>
Subject: Re: [PATCH v1 1/5] staging: wfx: fix warnings of no space is necessary
From: Joe Perches <joe@perches.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Jules Irenge
 <jbi.octave@gmail.com>
Date: Sat, 19 Oct 2019 13:02:31 -0700
In-Reply-To: <20191019180514.GI24678@kadam>
References: <20191019140719.2542-1-jbi.octave@gmail.com>
 <20191019140719.2542-2-jbi.octave@gmail.com> <20191019142443.GH24678@kadam>
 <alpine.LFD.2.21.1910191603520.6740@ninjahub.org>
 <20191019180514.GI24678@kadam>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 linux-kernel@vger.kernel.org, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, 2019-10-19 at 21:05 +0300, Dan Carpenter wrote:
> On Sat, Oct 19, 2019 at 04:09:03PM +0100, Jules Irenge wrote:
> > Checkpatch was complaining about  space between type cast and the 
> > variable. I just get rid of the space. Well I don't know whether this was 
> > false positive one.
> > 
> > Thanks for the feedback. I will update the patch.
> 
> No no.  The patch is fine.  I was saying that in the *future* you might
> want to look at the void casts.  Some of them are not required and
> others are buggy code.

Hello Jules.

Frequently, checkpatch is not the best tool to find and
possibly correct various unnecessary code styles.

checkpatch is OK to look at some odd uses

coccinelle is frequently a better overall tool for these uses.

A trivial cocci script to remove some unnecessary void * casts
from mem<foo> and str<foo> calls might be like the below, but
watch out for __iomem and __force uses where coccinelle doesn't
understand the syntax.

$ cat unnecessary_void_ptr.cocci
@@
type T1;
type T2;
T1 *p1;
T2 *p2;
@@

	\(memcpy\|memmove\|strcpy\|strncmp\)(
-	(void *)
	p1,
-	(void *)
	p2, ...)

@@
type T1;
type T2;
T1 *p1;
T2 *p2;
@@

	\(memcpy\|memmove\|strcpy\|strncmp\)(
	p1,
-	(void *)
	p2, ...)

@@
type T;
T *p;
@@

	\(memcpy\|memset\|memmove\|memzero\|strcpy\|strncmp\|strnlen\)(
-	(void *)
	p, ...)

$

For instance, when run over today's drivers/staging, this produces:

$ spatch --very-quiet -sp-file unnecessary_void_ptr.cocci drivers/staging
---
diff -u -p a/exfat/exfat_core.c b/exfat/exfat_core.c
--- a/exfat/exfat_core.c
+++ b/exfat/exfat_core.c
@@ -3427,7 +3427,7 @@ s32 rename_file(struct inode *inode, str
 			return FFS_MEDIAERR;
 		}
 
-		memcpy((void *)epnew, (void *)epold, DENTRY_SIZE);
+		memcpy(epnew, epold, DENTRY_SIZE);
 		if (fs_func->get_entry_type(epnew) == TYPE_FILE) {
 			fs_func->set_entry_attr(epnew,
 						fs_func->get_entry_attr(epnew) |
@@ -3449,7 +3449,7 @@ s32 rename_file(struct inode *inode, str
 				return FFS_MEDIAERR;
 			}
 
-			memcpy((void *)epnew, (void *)epold, DENTRY_SIZE);
+			memcpy(epnew, epold, DENTRY_SIZE);
 			buf_modify(sb, sector_new);
 			buf_unlock(sb, sector_old);
 		}
@@ -3538,7 +3538,7 @@ s32 move_file(struct inode *inode, struc
 		return FFS_MEDIAERR;
 	}
 
-	memcpy((void *)epnew, (void *)epmov, DENTRY_SIZE);
+	memcpy(epnew, epmov, DENTRY_SIZE);
 	if (fs_func->get_entry_type(epnew) == TYPE_FILE) {
 		fs_func->set_entry_attr(epnew, fs_func->get_entry_attr(epnew) |
 					ATTR_ARCHIVE);
@@ -3558,7 +3558,7 @@ s32 move_file(struct inode *inode, struc
 			return FFS_MEDIAERR;
 		}
 
-		memcpy((void *)epnew, (void *)epmov, DENTRY_SIZE);
+		memcpy(epnew, epmov, DENTRY_SIZE);
 		buf_modify(sb, sector_new);
 		buf_unlock(sb, sector_mov);
 	} else if (fs_func->get_entry_type(epnew) == TYPE_DIR) {
diff -u -p a/qlge/qlge_main.c b/qlge/qlge_main.c
--- a/qlge/qlge_main.c
+++ b/qlge/qlge_main.c
@@ -2583,7 +2583,7 @@ static netdev_tx_t qlge_send(struct sk_b
 	}
 	tx_ring_desc = &tx_ring->q[tx_ring->prod_idx];
 	mac_iocb_ptr = tx_ring_desc->queue_entry;
-	memset((void *)mac_iocb_ptr, 0, sizeof(*mac_iocb_ptr));
+	memset(mac_iocb_ptr, 0, sizeof(*mac_iocb_ptr));
 
 	mac_iocb_ptr->opcode = OPCODE_OB_MAC_IOCB;
 	mac_iocb_ptr->tid = tx_ring_desc->index;
@@ -3029,7 +3029,7 @@ static int ql_start_rx_ring(struct ql_ad
 	/* PCI doorbell mem area + 0x1c */
 	rx_ring->sbq.prod_idx_db_reg = (u32 __iomem *)(doorbell_area + 0x1c);
 
-	memset((void *)cqicb, 0, sizeof(struct cqicb));
+	memset(cqicb, 0, sizeof(struct cqicb));
 	cqicb->msix_vect = rx_ring->irq;
 
 	cqicb->len = cpu_to_le16(QLGE_FIT16(rx_ring->cq_len) | LEN_V |
@@ -3473,7 +3473,7 @@ static int ql_start_rss(struct ql_adapte
 	int i;
 	u8 *hash_id = (u8 *) ricb->hash_cq_id;
 
-	memset((void *)ricb, 0, sizeof(*ricb));
+	memset(ricb, 0, sizeof(*ricb));
 
 	ricb->base_cq = RSS_L4K;
 	ricb->flags =
@@ -3486,8 +3486,8 @@ static int ql_start_rss(struct ql_adapte
 	for (i = 0; i < 1024; i++)
 		hash_id[i] = (i & (qdev->rss_ring_count - 1));
 
-	memcpy((void *)&ricb->ipv6_hash_key[0], init_hash_seed, 40);
-	memcpy((void *)&ricb->ipv4_hash_key[0], init_hash_seed, 16);
+	memcpy(&ricb->ipv6_hash_key[0], init_hash_seed, 40);
+	memcpy(&ricb->ipv4_hash_key[0], init_hash_seed, 16);
 
 	status = ql_write_cfg(qdev, ricb, sizeof(*ricb), CFG_LR, 0);
 	if (status) {
@@ -3983,7 +3983,7 @@ static int ql_configure_rings(struct ql_
 
 	for (i = 0; i < qdev->tx_ring_count; i++) {
 		tx_ring = &qdev->tx_ring[i];
-		memset((void *)tx_ring, 0, sizeof(*tx_ring));
+		memset(tx_ring, 0, sizeof(*tx_ring));
 		tx_ring->qdev = qdev;
 		tx_ring->wq_id = i;
 		tx_ring->wq_len = qdev->tx_ring_size;
@@ -3999,7 +3999,7 @@ static int ql_configure_rings(struct ql_
 
 	for (i = 0; i < qdev->rx_ring_count; i++) {
 		rx_ring = &qdev->rx_ring[i];
-		memset((void *)rx_ring, 0, sizeof(*rx_ring));
+		memset(rx_ring, 0, sizeof(*rx_ring));
 		rx_ring->qdev = qdev;
 		rx_ring->cq_id = i;
 		rx_ring->cpu = i % cpu_cnt;	/* CPU to run handler on. */
@@ -4414,7 +4414,7 @@ static int ql_init_device(struct pci_dev
 	struct ql_adapter *qdev = netdev_priv(ndev);
 	int err = 0;
 
-	memset((void *)qdev, 0, sizeof(*qdev));
+	memset(qdev, 0, sizeof(*qdev));
 	err = pci_enable_device(pdev);
 	if (err) {
 		dev_err(&pdev->dev, "PCI device enable failed.\n");
diff -u -p a/rtl8188eu/core/rtw_ieee80211.c b/rtl8188eu/core/rtw_ieee80211.c
--- a/rtl8188eu/core/rtw_ieee80211.c
+++ b/rtl8188eu/core/rtw_ieee80211.c
@@ -132,7 +132,7 @@ u8 *rtw_set_ie
 	*(pbuf + 1) = (u8)len;
 
 	if (len > 0)
-		memcpy((void *)(pbuf + 2), (void *)source, len);
+		memcpy((pbuf + 2), source, len);
 
 	*frlen = *frlen + (len + 2);
 
diff -u -p a/rtl8188eu/core/rtw_mlme_ext.c b/rtl8188eu/core/rtw_mlme_ext.c
--- a/rtl8188eu/core/rtw_mlme_ext.c
+++ b/rtl8188eu/core/rtw_mlme_ext.c
@@ -2858,7 +2858,7 @@ static unsigned int OnAuthClient(struct
 			if (p == NULL)
 				goto authclnt_fail;
 
-			memcpy((void *)(pmlmeinfo->chg_txt), (void *)(p + 2), len);
+			memcpy((void *)(pmlmeinfo->chg_txt), (p + 2), len);
 			pmlmeinfo->auth_seq = 3;
 			issue_auth(padapter, NULL, 0);
 			set_link_timer(pmlmeext, REAUTH_TO);
diff -u -p a/rtl8192e/rtl819x_HTProc.c b/rtl8192e/rtl819x_HTProc.c
--- a/rtl8192e/rtl819x_HTProc.c
+++ b/rtl8192e/rtl819x_HTProc.c
@@ -655,13 +655,13 @@ void HTInitializeHTInfo(struct rtllib_de
 	pHTInfo->CurrentMPDUDensity = pHTInfo->MPDU_Density;
 	pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;
 
-	memset((void *)(&(pHTInfo->SelfHTCap)), 0,
+	memset((&(pHTInfo->SelfHTCap)), 0,
 		sizeof(pHTInfo->SelfHTCap));
-	memset((void *)(&(pHTInfo->SelfHTInfo)), 0,
+	memset((&(pHTInfo->SelfHTInfo)), 0,
 		sizeof(pHTInfo->SelfHTInfo));
-	memset((void *)(&(pHTInfo->PeerHTCapBuf)), 0,
+	memset((&(pHTInfo->PeerHTCapBuf)), 0,
 		sizeof(pHTInfo->PeerHTCapBuf));
-	memset((void *)(&(pHTInfo->PeerHTInfoBuf)), 0,
+	memset((&(pHTInfo->PeerHTInfoBuf)), 0,
 		sizeof(pHTInfo->PeerHTInfoBuf));
 
 	pHTInfo->bSwBwInProgress = false;
diff -u -p a/rtl8192u/r819xU_cmdpkt.c b/rtl8192u/r819xU_cmdpkt.c
--- a/rtl8192u/r819xU_cmdpkt.c
+++ b/rtl8192u/r819xU_cmdpkt.c
@@ -373,7 +373,7 @@ static void cmpk_handle_tx_status(struct
 {
 	cmpk_tx_status_t	rx_tx_sts;
 
-	memcpy((void *)&rx_tx_sts, (void *)pmsg, sizeof(cmpk_tx_status_t));
+	memcpy(&rx_tx_sts, pmsg, sizeof(cmpk_tx_status_t));
 	/* 2. Use tx feedback info to count TX statistics. */
 	cmpk_count_tx_status(dev, &rx_tx_sts);
 }
diff -u -p a/rtl8712/ieee80211.c b/rtl8712/ieee80211.c
--- a/rtl8712/ieee80211.c
+++ b/rtl8712/ieee80211.c
@@ -90,7 +90,7 @@ u8 *r8712_set_ie(u8 *pbuf, sint index, u
 	*pbuf = (u8)index;
 	*(pbuf + 1) = (u8)len;
 	if (len > 0)
-		memcpy((void *)(pbuf + 2), (void *)source, len);
+		memcpy((pbuf + 2), source, len);
 	*frlen = *frlen + (len + 2);
 	return pbuf + len + 2;
 }
diff -u -p a/rtl8723bs/core/rtw_ieee80211.c b/rtl8723bs/core/rtw_ieee80211.c
--- a/rtl8723bs/core/rtw_ieee80211.c
+++ b/rtl8723bs/core/rtw_ieee80211.c
@@ -112,7 +112,7 @@ int rtw_check_network_type(unsigned char
 u8 *rtw_set_fixed_ie(unsigned char *pbuf, unsigned int len, unsigned char *source,
 				unsigned int *frlen)
 {
-	memcpy((void *)pbuf, (void *)source, len);
+	memcpy(pbuf, source, len);
 	*frlen = *frlen + len;
 	return pbuf + len;
 }
@@ -132,7 +132,7 @@ u8 *rtw_set_ie
 	*(pbuf + 1) = (u8)len;
 
 	if (len > 0)
-		memcpy((void *)(pbuf + 2), (void *)source, len);
+		memcpy((pbuf + 2), source, len);
 
 	*frlen = *frlen + (len + 2);
 
diff -u -p a/rtl8723bs/core/rtw_mlme_ext.c b/rtl8723bs/core/rtw_mlme_ext.c
--- a/rtl8723bs/core/rtw_mlme_ext.c
+++ b/rtl8723bs/core/rtw_mlme_ext.c
@@ -1132,7 +1132,7 @@ unsigned int OnAuthClient(struct adapter
 				goto authclnt_fail;
 			}
 
-			memcpy((void *)(pmlmeinfo->chg_txt), (void *)(p + 2), len);
+			memcpy((void *)(pmlmeinfo->chg_txt), (p + 2), len);
 			pmlmeinfo->auth_seq = 3;
 			issue_auth(padapter, NULL, 0);
 			set_link_timer(pmlmeext, REAUTH_TO);
diff -u -p a/rtl8723bs/hal/rtl8723b_hal_init.c b/rtl8723bs/hal/rtl8723b_hal_init.c
--- a/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -2432,13 +2432,13 @@ void Hal_InitPGData(struct adapter *pada
 		if (!pEEPROM->EepromOrEfuse) {
 			/*  Read EFUSE real map to shadow. */
 			EFUSE_ShadowMapUpdate(padapter, EFUSE_WIFI, false);
-			memcpy((void *)PROMContent, (void *)pEEPROM->efuse_eeprom_data, HWSET_MAX_SIZE_8723B);
+			memcpy(PROMContent, (void *)pEEPROM->efuse_eeprom_data, HWSET_MAX_SIZE_8723B);
 		}
 	} else {/* autoload fail */
 		RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("AutoLoad Fail reported from CR9346!!\n"));
 		if (!pEEPROM->EepromOrEfuse)
 			EFUSE_ShadowMapUpdate(padapter, EFUSE_WIFI, false);
-		memcpy((void *)PROMContent, (void *)pEEPROM->efuse_eeprom_data, HWSET_MAX_SIZE_8723B);
+		memcpy(PROMContent, (void *)pEEPROM->efuse_eeprom_data, HWSET_MAX_SIZE_8723B);
 	}
 }
 
diff -u -p a/rtl8723bs/os_dep/ioctl_cfg80211.c b/rtl8723bs/os_dep/ioctl_cfg80211.c
--- a/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -98,7 +98,7 @@ static struct ieee80211_channel rtw_2ghz
 
 static void rtw_2g_channels_init(struct ieee80211_channel *channels)
 {
-	memcpy((void*)channels, (void*)rtw_2ghz_channels,
+	memcpy(channels, (void*)rtw_2ghz_channels,
 		sizeof(struct ieee80211_channel)*RTW_2G_CHANNELS_NUM
 	);
 }
@@ -2548,7 +2548,7 @@ static netdev_tx_t rtw_cfg80211_monitor_
 
 		pframe = (u8 *)(pmgntframe->buf_addr) + TXDESC_OFFSET;
 
-		memcpy(pframe, (void*)buf, len);
+		memcpy(pframe, buf, len);
 		pattrib->pktlen = len;
 
 		pwlanhdr = (struct ieee80211_hdr *)pframe;
@@ -2750,7 +2750,7 @@ static int rtw_add_beacon(struct adapter
 		return -ENOMEM;
 
 	memcpy(pbuf, (void *)head+24, head_len-24);/*  24 =beacon header len. */
-	memcpy(pbuf+head_len-24, (void *)tail, tail_len);
+	memcpy(pbuf+head_len-24, tail, tail_len);
 
 	len = head_len+tail_len-24;
 
@@ -3041,7 +3041,7 @@ static int _cfg80211_rtw_mgmt_tx(struct
 
 	pframe = (u8 *)(pmgntframe->buf_addr) + TXDESC_OFFSET;
 
-	memcpy(pframe, (void*)buf, len);
+	memcpy(pframe, buf, len);
 	pattrib->pktlen = len;
 
 	pwlanhdr = (struct ieee80211_hdr *)pframe;
diff -u -p a/vt6655/rxtx.c b/vt6655/rxtx.c
--- a/vt6655/rxtx.c
+++ b/vt6655/rxtx.c
@@ -1170,7 +1170,7 @@ s_cbFillTxBufHead(struct vnt_private *pD
 
 	td_info->mic_hdr = pMICHDR;
 
-	memset((void *)(pbyTxBufferAddr + wTxBufSize), 0, (cbHeaderLength - wTxBufSize));
+	memset((pbyTxBufferAddr + wTxBufSize), 0, (cbHeaderLength - wTxBufSize));
 
 	/* Fill FIFO,RrvTime,RTS,and CTS */
 	s_vGenerateTxParameter(pDevice, byPktType, tx_buffer_head, pvRrvTime, pvRTS, pvCTS,


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
