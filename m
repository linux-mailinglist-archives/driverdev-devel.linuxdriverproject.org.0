Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A02D129476A
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 06:34:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 54B8A862BC;
	Wed, 21 Oct 2020 04:34:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nYF5gTPQ85zz; Wed, 21 Oct 2020 04:33:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 604C38625D;
	Wed, 21 Oct 2020 04:33:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ED3091BF315
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 04:33:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E9B84873A9
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 04:33:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id REjtJY-Xe5HJ for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 04:33:53 +0000 (UTC)
X-Greylist: delayed 00:07:20 by SQLgrey-1.7.6
Received: from p3plsmtpa12-08.prod.phx3.secureserver.net
 (p3plsmtpa12-08.prod.phx3.secureserver.net [68.178.252.237])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 155CF8739E
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 04:33:52 +0000 (UTC)
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by :SMTPAUTH: with ESMTPSA
 id V5hnkYEXrKefiV5hnkQdTj; Tue, 20 Oct 2020 21:26:32 -0700
X-CMAE-Analysis: v=2.3 cv=f/s2+96M c=1 sm=1 tr=0
 a=BywyyHFUc6xkDsWQZT4t1g==:117 a=IkcTkHD0fZMA:10 a=MKtGQD3n3ToA:10
 a=afefHYAZSVUA:10 a=pFd2Zl5z2vwA:10 a=ZZnuYtJkoWoA:10 a=pGLkceISAAAA:8
 a=4RBUngkUAAAA:8 a=1XWaLZrsAAAA:8 a=4vmkics7GopiFC_8QScA:9
 a=SMkLWvbea_adbkjV:21 a=kX2yLtDaiJZaFquU:21 a=QEXdDO2ut3YA:10
 a=cDyXFGGuxjcA:10 a=_sbA2Q-Kp09kWB8D3iXc:22
X-SECURESERVER-ACCT: vthakkar@vaishalithakkar.in
Received: by mail-oi1-f179.google.com with SMTP id u127so743529oib.6
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 21:26:31 -0700 (PDT)
X-Gm-Message-State: AOAM531AAA93xk7KBPf9B1geckGMl+InIWMHWAbfyz1z/Xg/HHZ2+GrM
 EPn4eNQr3RxNjkDah/e8hW+8OaNxLYqt3Gy62P0=
X-Google-Smtp-Source: ABdhPJysookYHBMYzU8EMZMRHxIgbwd63/l8I4otHxam40Yzevga3xuQpVdwmojIjGpgEatq6EZ/T4yYWTNuXw+nkK4=
X-Received: by 2002:aca:750c:: with SMTP id q12mr934419oic.174.1603254391344; 
 Tue, 20 Oct 2020 21:26:31 -0700 (PDT)
MIME-Version: 1.0
References: <20201020151748.35937-1-eafanasova@gmail.com>
In-Reply-To: <20201020151748.35937-1-eafanasova@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Wed, 21 Oct 2020 09:56:18 +0530
X-Gmail-Original-Message-ID: <CAK-LDbJiYwkZbpHrYVjBqdcipMQ4HC18TV43fVrEY7FiGpq8Yg@mail.gmail.com>
Message-ID: <CAK-LDbJiYwkZbpHrYVjBqdcipMQ4HC18TV43fVrEY7FiGpq8Yg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging/rtl8188eu: fix line length
 exceeds 100 columns
To: Elena Afanasova <eafanasova@gmail.com>
X-CMAE-Envelope: MS4wfL7XVoKy9g2yyGeUlx+5oCZNBkYqp6a6y8EZLqvvMd+TidolCRvO+CgA1iuC3djH/vgfzy5ULOo8zG25QoUgEgI3EKhwhOAn+SuJJhG2bv6p5c/QLWjy
 7IGL1PZkq6AgKgqy2NpSCZCS3eaJMrhRLewgbJ/EI3bcUNJN6/v9VxUxlHDLx2GoJYygq+cDlBXHDKsWtGkSWrKCoi7taikiGO8=
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 20, 2020 at 8:56 PM Elena Afanasova <eafanasova@gmail.com> wrote:
>
> Reported by checkpatch.pl

Hi Elena,

Thanks for your patches. Your commit log should mention
why are you doing certain changes. Above commit log
doesn't give reviewer/maintainer an idea about what are
you fixing and why that change is necessary.

Also, avoid using the word 'fix' in the subject lines. Rather
write about the change you're doing in this patch. For
example, you can write something like 'rearrange
lines exceeding 100 columns' for this patch.

Above review applies for all the patches you've sent so far. :)

> Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_xmit.c | 118 +++++++++++++++-------
>  1 file changed, 81 insertions(+), 37 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> index 317355f830cb..51769f2ca910 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
> @@ -44,7 +44,9 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>         u32 max_xmit_extbuf_size = MAX_XMIT_EXTBUF_SZ;
>         u32 num_xmit_extbuf = NR_XMIT_EXTBUFF;
>
> -       /*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
> +       /*  We don't need to memset padapter->XXX to zero,
> +        *  because adapter is allocated by vzalloc().
> +        */
>
>         spin_lock_init(&pxmitpriv->lock);
>
> @@ -127,7 +129,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>                 res = rtw_os_xmit_resource_alloc(pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
>                 if (res == _FAIL) {
>                         msleep(10);
> -                       res = rtw_os_xmit_resource_alloc(pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
> +                       res = rtw_os_xmit_resource_alloc(pxmitbuf, (MAX_XMITBUF_SZ +
> +                                                                       XMITBUF_ALIGN_SZ));
>                         if (res == _FAIL)
>                                 goto exit;
>                 }
> @@ -441,7 +444,9 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>                                     ((tmp[21] == 67) && (tmp[23] == 68))) {
>                                         /*  68 : UDP BOOTP client */
>                                         /*  67 : UDP BOOTP server */
> -                                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====================== %s: get DHCP Packet\n", __func__));
> +                                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                                                ("====================== %s: get DHCP Packet\n",
> +                                                __func__));
>                                         /*  Use low rate to send DHCP packet. */
>                                         pattrib->dhcp_pkt = 1;
>                                 }
> @@ -455,7 +460,9 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>                 rtw_set_scan_deny(padapter, 3000);
>
>         /*  If EAPOL , ARP , OR DHCP packet, driver must be in active mode. */
> -       if ((pattrib->ether_type == ETH_P_ARP) || (pattrib->ether_type == ETH_P_PAE) || (pattrib->dhcp_pkt == 1))
> +       if ((pattrib->ether_type == ETH_P_ARP) ||
> +           (pattrib->ether_type == ETH_P_PAE) ||
> +           (pattrib->dhcp_pkt == 1))
>                 rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SPECIAL_PACKET, 1);
>
>         mcast = is_multicast_ether_addr(pattrib->ra);
> @@ -466,7 +473,9 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>         } else {
>                 psta = rtw_get_stainfo(pstapriv, pattrib->ra);
>                 if (!psta) { /*  if we cannot get psta => drrp the pkt */
> -                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra: %pM\n", (pattrib->ra)));
> +                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_,
> +                                ("\nupdate_attrib => get sta_info fail, ra: %pM\n",
> +                                (pattrib->ra)));
>                         res = _FAIL;
>                         goto exit;
>                 } else if (check_fwstate(pmlmepriv, WIFI_AP_STATE) &&
> @@ -482,7 +491,9 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>                 pattrib->psta = psta;
>         } else {
>                 /*  if we cannot get psta => drop the pkt */
> -               RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra:%pM\n", (pattrib->ra)));
> +               RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_,
> +                        ("\nupdate_attrib => get sta_info fail, ra:%pM\n",
> +                        (pattrib->ra)));
>                 res = _FAIL;
>                 goto exit;
>         }
> @@ -507,7 +518,8 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>         }
>
>         if (psta->ieee8021x_blocked) {
> -               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("\n psta->ieee8021x_blocked == true\n"));
> +               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                        ("\n psta->ieee8021x_blocked == true\n"));
>
>                 pattrib->encrypt = 0;
>
> @@ -556,7 +568,8 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>                 }
>                 break;
>         case _AES_:
> -               RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("pattrib->encrypt=%d (_AES_)\n", pattrib->encrypt));
> +               RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
> +                        ("pattrib->encrypt=%d (_AES_)\n", pattrib->encrypt));
>                 pattrib->iv_len = 8;
>                 pattrib->icv_len = 8;
>                 break;
> @@ -647,7 +660,7 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
>                         for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
>                                 payload = (u8 *)round_up((size_t)(payload), 4);
>                                 RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> -                                        ("=== curfragnum=%d, pframe = 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x,!!!\n",
> +                                        ("curfrnum=%d: %.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x\n",
>                                          curfragnum, *payload, *(payload + 1),
>                                          *(payload + 2), *(payload + 3),
>                                          *(payload + 4), *(payload + 5),
> @@ -673,21 +686,28 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
>                                                   pattrib->icv_len : 0);
>                                         rtw_secmicappend(&micdata, payload, length);
>                                         payload += length + pattrib->icv_len;
> -                                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("curfragnum=%d length=%d pattrib->icv_len=%d", curfragnum, length, pattrib->icv_len));
> +                                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                                                ("curfragnum=%d length=%d pattrib->icv_len=%d",
> +                                                curfragnum, length, pattrib->icv_len));
>                                 }
>                         }
>                         rtw_secgetmic(&micdata, &mic[0]);
> -                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: before add mic code!!!\n", __func__));
> -                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: pattrib->last_txcmdsz=%d!!!\n", __func__, pattrib->last_txcmdsz));
> -                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: mic[0]=0x%.2x , mic[1]=0x%.2x , mic[2]= 0x%.2x, mic[3]=0x%.2x\n\
> -  mic[4]= 0x%.2x , mic[5]= 0x%.2x , mic[6]= 0x%.2x , mic[7]= 0x%.2x !!!!\n",
> -                               __func__, mic[0], mic[1], mic[2], mic[3], mic[4], mic[5], mic[6], mic[7]));
> +                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                                ("%s: before add mic code!!!\n", __func__));
> +                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                                ("%s: pattrib->last_txcmdsz=%d!!!\n",
> +                                __func__, pattrib->last_txcmdsz));
> +                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                                ("%s: mic: %.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x !!!!\n",
> +                                __func__, mic[0], mic[1], mic[2], mic[3], mic[4], mic[5],
> +                                mic[6], mic[7]));
>                         /* add mic code  and add the mic code length in last_txcmdsz */
>
>                         memcpy(payload, &mic[0], 8);
>                         pattrib->last_txcmdsz += 8;
>
> -                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("\n ======== last pkt ========\n"));
> +                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
> +                                ("\n ======== last pkt ========\n"));
>                         payload -= pattrib->last_txcmdsz + 8;
>                         for (curfragnum = 0; curfragnum < pattrib->last_txcmdsz; curfragnum += 8)
>                                 RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
> @@ -697,7 +717,8 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
>                                          *(payload + curfragnum + 4), *(payload + curfragnum + 5),
>                                          *(payload + curfragnum + 6), *(payload + curfragnum + 7)));
>                         } else {
> -                               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
> +                               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                                        ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
>                         }
>         }
>
> @@ -787,7 +808,9 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
>                         if (psta && psta->qos_option)
>                                 qos_option = true;
>                 } else {
> -                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("fw_state:%x is not allowed to xmit frame\n", get_fwstate(pmlmepriv)));
> +                       RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                                ("fw_state:%x is not allowed to xmit frame\n",
> +                                get_fwstate(pmlmepriv)));
>                         res = _FAIL;
>                         goto exit;
>                 }
> @@ -836,11 +859,13 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
>                                 if (SN_LESS(pattrib->seqnum, tx_seq)) {
>                                         pattrib->ampdu_en = false;/* AGG BK */
>                                 } else if (SN_EQUAL(pattrib->seqnum, tx_seq)) {
> -                                       psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (tx_seq + 1) & 0xfff;
> +                                       psta->BA_starting_seqctrl[pattrib->priority & 0x0f] =
> +                                                                       (tx_seq + 1) & 0xfff;
>
>                                         pattrib->ampdu_en = true;/* AGG EN */
>                                 } else {
> -                                       psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (pattrib->seqnum + 1) & 0xfff;
> +                                       psta->BA_starting_seqctrl[pattrib->priority & 0x0f] =
> +                                                               (pattrib->seqnum + 1) & 0xfff;
>                                         pattrib->ampdu_en = true;/* AGG EN */
>                                 }
>                         }
> @@ -904,7 +929,8 @@ s32 rtw_txframes_sta_ac_pending(struct adapter *padapter, struct pkt_attrib *pat
>   * 6. apply sw-encrypt, if necessary.
>   *
>   */
> -s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct xmit_frame *pxmitframe)
> +s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt,
> +                          struct xmit_frame *pxmitframe)
>  {
>         s32 frg_inx, frg_len, mpdu_len, llc_sz, mem_sz;
>         size_t addr;
> @@ -935,7 +961,8 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
>         mem_start = pbuf_start +        hw_hdr_offset;
>
>         if (rtw_make_wlanhdr(padapter, mem_start, pattrib) == _FAIL) {
> -               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: rtw_make_wlanhdr fail; drop pkt\n", __func__));
> +               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                        ("%s: rtw_make_wlanhdr fail; drop pkt\n", __func__));
>                 DBG_88E("%s: rtw_make_wlanhdr fail; drop pkt\n", __func__);
>                 res = _FAIL;
>                 goto exit;
> @@ -1016,15 +1043,18 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
>                 if (mcast || remainder == 0) {
>                         pattrib->nr_frags = frg_inx;
>
> -                       pattrib->last_txcmdsz = pattrib->hdrlen + pattrib->iv_len + ((pattrib->nr_frags == 1) ? llc_sz : 0) +
> -                                               ((pattrib->bswenc) ? pattrib->icv_len : 0) + mem_sz;
> +                       pattrib->last_txcmdsz = pattrib->hdrlen + pattrib->iv_len +
> +                                               ((pattrib->nr_frags == 1) ? llc_sz : 0) +
> +                                               ((pattrib->bswenc) ? pattrib->icv_len : 0) +
> +                                               mem_sz;
>
>                         ClearMFrag(mem_start);
>
>                         break;
>                 }
>
> -               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: There're still something in packet!\n", __func__));
> +               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                        ("%s: There're still something in packet!\n", __func__));
>
>                 addr = (size_t)(pframe);
>
> @@ -1036,7 +1066,8 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
>         rtl88eu_mon_xmit_hook(padapter->pmondev, pxmitframe, frg_len);
>
>         if (xmitframe_addmic(padapter, pxmitframe) == _FAIL) {
> -               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("xmitframe_addmic(padapter, pxmitframe) == _FAIL\n"));
> +               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                        ("xmitframe_addmic(padapter, pxmitframe) == _FAIL\n"));
>                 DBG_88E("xmitframe_addmic(padapter, pxmitframe) == _FAIL\n");
>                 res = _FAIL;
>                 goto exit;
> @@ -1297,7 +1328,8 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
>         struct sk_buff *pndis_pkt = NULL;
>
>         if (!pxmitframe) {
> -               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====== %s:pxmitframe == NULL!!!!!!!!!!\n", __func__));
> +               RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +                        ("====== %s:pxmitframe == NULL!!!!!!!!!!\n", __func__));
>                 goto exit;
>         }
>
> @@ -1313,7 +1345,8 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
>         list_add_tail(&pxmitframe->list, get_list_head(pfree_xmit_queue));
>
>         pxmitpriv->free_xmitframe_cnt++;
> -       RT_TRACE(_module_rtl871x_xmit_c_, _drv_debug_, ("%s:free_xmitframe_cnt=%d\n", __func__, pxmitpriv->free_xmitframe_cnt));
> +       RT_TRACE(_module_rtl871x_xmit_c_, _drv_debug_,
> +                ("%s:free_xmitframe_cnt=%d\n", __func__, pxmitpriv->free_xmitframe_cnt));
>
>         spin_unlock_bh(&pfree_xmit_queue->lock);
>
> @@ -1355,7 +1388,9 @@ s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitfram
>         return _SUCCESS;
>  }
>
> -static struct xmit_frame *dequeue_one_xmitframe(struct xmit_priv *pxmitpriv, struct hw_xmit *phwxmit, struct tx_servq *ptxservq, struct __queue *pframe_queue)
> +static struct xmit_frame *
> +dequeue_one_xmitframe(struct xmit_priv *pxmitpriv, struct hw_xmit *phwxmit,
> +                     struct tx_servq *ptxservq, struct __queue *pframe_queue)

For the checkpatch suggestions like lines exceeding certain
characters, it might be a good idea to not send a patch with
so many changes all over the places. Rather you can batch
them into a patch(s) where you're improving the readability
of the similar kind of patterns/lines. For example, in the above
case, you can have a patch where you're just handling those
RT_TRACE lines.

>  {
>         struct list_head *xmitframe_plist, *xmitframe_phead;
>         struct  xmit_frame      *pxmitframe = NULL;
> @@ -1375,7 +1410,8 @@ static struct xmit_frame *dequeue_one_xmitframe(struct xmit_priv *pxmitpriv, str
>         return pxmitframe;
>  }
>
> -struct xmit_frame *rtw_dequeue_xframe(struct xmit_priv *pxmitpriv, struct hw_xmit *phwxmit_i, int entry)
> +struct xmit_frame *
> +rtw_dequeue_xframe(struct xmit_priv *pxmitpriv, struct hw_xmit *phwxmit_i, int entry)
>  {
>         struct list_head *sta_plist, *sta_phead;
>         struct hw_xmit *phwxmit;
> @@ -1408,13 +1444,18 @@ struct xmit_frame *rtw_dequeue_xframe(struct xmit_priv *pxmitpriv, struct hw_xmi
>
>                         pframe_queue = &ptxservq->sta_pending;
>
> -                       pxmitframe = dequeue_one_xmitframe(pxmitpriv, phwxmit, ptxservq, pframe_queue);
> +                       pxmitframe = dequeue_one_xmitframe(pxmitpriv,
> +                                                          phwxmit,
> +                                                          ptxservq,
> +                                                          pframe_queue);
>
>                         if (pxmitframe) {
>                                 phwxmit->accnt--;
>
> -                               /* Remove sta node when there are no pending packets. */
> -                               if (list_empty(&pframe_queue->queue)) /* must be done after get_next and before break */
> +                               /* Remove sta node when there are no pending packets.
> +                                * must be done after get_next and before break
> +                                */
> +                               if (list_empty(&pframe_queue->queue))
>                                         list_del_init(&ptxservq->tx_pending);
>                                 goto exit;
>                         }
> @@ -1670,8 +1711,8 @@ int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fra
>                         pstapriv->tim_bitmap |= BIT(0);/*  */
>                         pstapriv->sta_dz_bitmap |= BIT(0);
>
> -                       update_beacon(padapter, WLAN_EID_TIM, NULL, false);/* tx bc/mc packets after update bcn */
> -
> +                       /* tx bc/mc packets after update bcn */
> +                       update_beacon(padapter, WLAN_EID_TIM, NULL, false);
>                         ret = true;
>                 }
>
> @@ -1733,7 +1774,9 @@ int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fra
>         return ret;
>  }
>
> -static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struct sta_info *psta, struct __queue *pframequeue)
> +static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter,
> +                                                struct sta_info *psta,
> +                                                struct __queue *pframequeue)
>  {
>         struct list_head *plist, *phead;
>         u8      ac_index;
> @@ -1754,7 +1797,8 @@ static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struc
>
>                 pattrib = &pxmitframe->attrib;
>
> -               ptxservq = rtw_get_sta_pending(padapter, psta, pattrib->priority, (u8 *)(&ac_index));
> +               ptxservq = rtw_get_sta_pending(padapter, psta, pattrib->priority,
> +                                              (u8 *)(&ac_index));
>
>                 ptxservq->qcnt--;
>                 phwxmits[ac_index].accnt--;
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20201020151748.35937-1-eafanasova%40gmail.com.



-- 
Vaishali


-- 
Vaishali
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
