Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 852CE29AC08
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Oct 2020 13:28:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7904E866B9;
	Tue, 27 Oct 2020 12:28:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qGnhemZzvemY; Tue, 27 Oct 2020 12:28:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BFCBA866AF;
	Tue, 27 Oct 2020 12:28:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CF9391BF84C
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 12:28:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B670D2045E
 for <devel@linuxdriverproject.org>; Tue, 27 Oct 2020 12:28:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b3MFE-eSBpaE for <devel@linuxdriverproject.org>;
 Tue, 27 Oct 2020 12:28:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2130.oracle.com (aserp2130.oracle.com [141.146.126.79])
 by silver.osuosl.org (Postfix) with ESMTPS id F186A203EA
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 12:28:03 +0000 (UTC)
Received: from pps.filterd (aserp2130.oracle.com [127.0.0.1])
 by aserp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RCMwvq003337;
 Tue, 27 Oct 2020 12:28:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=tylquuXZ9kgW4LglgpQUMilOJDrTzJpwmjaJvQfNwJQ=;
 b=N89LidkggFVrn9nQGeh9fyLnF4CT/OmAvZCTKWo6z8lB6rLZOFwQbDnFzp8S2o5/i0O7
 1an7WrohUANfkYVEoHTJciRutBWSVeIgxFtldRvVeEnS8xqcRRRAOFl9Y+hXOigBCwYT
 REOHNv7kLQLu/juRS+DDFosy0YySHfuGaD4uIaGYIfgrHckC/ulT3A5G/t3hyuBSww5h
 OTF4U/6ZGE16dJK9k1v4DrogccSRDkTb6X/ipaH+MwMqbNU5gpSiNRXgej4V0BH2fRmd
 CyCjxATGYYPymyVa9/+3+fl+70tDWVBDz3WaNDhHUB6IwovFHyPTWb9kcvca5ofEGsJW /A== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2130.oracle.com with ESMTP id 34c9sasr76-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 27 Oct 2020 12:28:02 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 09RC6HGV154627;
 Tue, 27 Oct 2020 12:28:02 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 34cx1qnga5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 27 Oct 2020 12:28:01 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 09RCS0w9019856;
 Tue, 27 Oct 2020 12:28:00 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 27 Oct 2020 05:28:00 -0700
Date: Tue, 27 Oct 2020 15:27:54 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Elena Afanasova <eafanasova@gmail.com>
Subject: Re: [PATCH] staging/rtl8188eu: fix line length exceeds 100 columns
Message-ID: <20201027122754.GV1042@kadam>
References: <20201020151748.35937-1-eafanasova@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201020151748.35937-1-eafanasova@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0
 phishscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2010270080
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9786
 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0
 impostorscore=0
 mlxlogscore=999 malwarescore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 phishscore=0 clxscore=1015 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2010270080
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Oct 20, 2020 at 08:17:48AM -0700, Elena Afanasova wrote:
> Reported by checkpatch.pl
> 

If I were trying to clean up this driver I would probably take a
different approach.

Just send a patch that introduces line breaks for RT_TRACE() printks.
The RT_TRACE() printks are super ugly, and if you add newlines to them,
it can't make it worse than it already is.  Do not change the RT_TRACE()
output.

-                                        ("=== curfragnum=%d, pframe = 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x,!!!\n",
+                                        ("curfrnum=%d: %.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x\n",

Your change here is an improvement but it requires thinking and
reviewers don't want to look at RT_TRACE().  Make your patches as
uncontroversial as possible.

Then for the other things there are some changes which are good, but in
other places the correct thing is to introduce new functions.  So what
I would want instead is a series of patches which do small clean ups
which make the code obviously better, and are not just to make checkpatch
happy.

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
>  	u32 max_xmit_extbuf_size = MAX_XMIT_EXTBUF_SZ;
>  	u32 num_xmit_extbuf = NR_XMIT_EXTBUFF;
>  
> -	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
> +	/*  We don't need to memset padapter->XXX to zero,
> +	 *  because adapter is allocated by vzalloc().
> +	 */

This comment is totally pointless.  Kernel devs are expected to
understand what the "z" in vzalloc() means.  Just delete it.

>  
>  	spin_lock_init(&pxmitpriv->lock);
>  
> @@ -127,7 +129,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
>  		res = rtw_os_xmit_resource_alloc(pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
>  		if (res == _FAIL) {
>  			msleep(10);
> -			res = rtw_os_xmit_resource_alloc(pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
> +			res = rtw_os_xmit_resource_alloc(pxmitbuf, (MAX_XMITBUF_SZ +
> +									XMITBUF_ALIGN_SZ));

Align it like this:

			res = rtw_os_xmit_resource_alloc(pxmitbuf,
							 MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ);

The rtw_os_xmit_resource_alloc() function is poorly named.


>  			if (res == _FAIL)
>  				goto exit;
>  		}
> @@ -441,7 +444,9 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>  				    ((tmp[21] == 67) && (tmp[23] == 68))) {
>  					/*  68 : UDP BOOTP client */
>  					/*  67 : UDP BOOTP server */
> -					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====================== %s: get DHCP Packet\n", __func__));
> +					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
> +						 ("====================== %s: get DHCP Packet\n",
> +						 __func__));

What does this message really mean?  The "===" characters don't add
anything.  It's probably better to just delete this printk.

>  					/*  Use low rate to send DHCP packet. */
>  					pattrib->dhcp_pkt = 1;
>  				}
> @@ -455,7 +460,9 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>  		rtw_set_scan_deny(padapter, 3000);
>  
>  	/*  If EAPOL , ARP , OR DHCP packet, driver must be in active mode. */
> -	if ((pattrib->ether_type == ETH_P_ARP) || (pattrib->ether_type == ETH_P_PAE) || (pattrib->dhcp_pkt == 1))
> +	if ((pattrib->ether_type == ETH_P_ARP) ||
> +	    (pattrib->ether_type == ETH_P_PAE) ||
> +	    (pattrib->dhcp_pkt == 1))

This change is good.

>  		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SPECIAL_PACKET, 1);
>  
>  	mcast = is_multicast_ether_addr(pattrib->ra);
> @@ -466,7 +473,9 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>  	} else {
>  		psta = rtw_get_stainfo(pstapriv, pattrib->ra);
>  		if (!psta) { /*  if we cannot get psta => drrp the pkt */
> -			RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra: %pM\n", (pattrib->ra)));
> +			RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_,
> +				 ("\nupdate_attrib => get sta_info fail, ra: %pM\n",
> +				 (pattrib->ra)));

I guess this is fine.  All the RT_TRACE output just looks so terrible...
Why does it sometimes have a newline at the start and sometimes not?
In one place you improved the RT_TRACE() output which is good but
probably should be done in a separate patch...

Anyway, I'm done thinking about RT_TRACE() because it makes me want to
poke out my own eyeballs like the really gruesome scene from Game of
Throwns where the guys head explodes.

[ snip ]

> @@ -836,11 +859,13 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
>  				if (SN_LESS(pattrib->seqnum, tx_seq)) {
>  					pattrib->ampdu_en = false;/* AGG BK */
>  				} else if (SN_EQUAL(pattrib->seqnum, tx_seq)) {
> -					psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (tx_seq + 1) & 0xfff;
> +					psta->BA_starting_seqctrl[pattrib->priority & 0x0f] =
> +									(tx_seq + 1) & 0xfff;
>  
>  					pattrib->ampdu_en = true;/* AGG EN */
>  				} else {
> -					psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (pattrib->seqnum + 1) & 0xfff;
> +					psta->BA_starting_seqctrl[pattrib->priority & 0x0f] =
> +								(pattrib->seqnum + 1) & 0xfff;
>  					pattrib->ampdu_en = true;/* AGG EN */

I would argue that this is less readable (worse) than before.  The
way to fix this is to introduce new functions.

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
