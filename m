Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1661E4E84
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 21:48:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id DC81888085;
	Wed, 27 May 2020 19:48:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rukb7+L+QPAD; Wed, 27 May 2020 19:48:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9924A8805A;
	Wed, 27 May 2020 19:48:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CB52F1BF59A
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 19:48:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A71B92214F
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 19:48:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id D0spiCyVfeYo for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 19:48:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id C93AA204CF
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 19:48:20 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04RJllua002046;
 Wed, 27 May 2020 19:48:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 in-reply-to; s=corp-2020-01-29;
 bh=iOFWFzT/Y8/tUUAy74tEmOHpVPIVu/JZN3B4CWNmoFc=;
 b=gT6d1H7MgY2dPrU62J379tyWxzjCNMi6rd/JliS22w51oR7VrccOeuawOeT032H5UQXj
 u96XknxM+sL/+Os7zbLe+j/Mmxghu4Evwkim264LF15uUSyilJ35qrOdRPPwq1f6MPUG
 A0Molfq6IEu5jwpLkIQaZea0rkwvC9Hpnxsfr5ovMDScObpIJ1GdZq0I+0pawZHPtyCg
 PGYZnfwAoYEMxDDm24biJ1bQ/GNN0E6kGnr2kq4Bpxsj+ZGXwV+9j3d7Aj4JaChF/dzQ
 acjWq3cSkRKTbIH12tTU1JTl8Qe92Ds6pdsc2hgV9hSGgUbFSjigUKZ6fMnJejox37QJ AA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2120.oracle.com with ESMTP id 318xbk1gf3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 27 May 2020 19:48:19 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04RJlZN1004381;
 Wed, 27 May 2020 19:48:19 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 317j5stf3e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 27 May 2020 19:48:19 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04RJmIUG021190;
 Wed, 27 May 2020 19:48:18 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 27 May 2020 12:48:17 -0700
Date: Wed, 27 May 2020 22:48:11 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Pascal Terjan <pterjan@google.com>
Subject: Re: [PATCH] staging: rtl8723bs: Use shared header constants
Message-ID: <20200527194811.GF30374@kadam>
References: <20200523212919.33181-1-pterjan@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200523212919.33181-1-pterjan@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 spamscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2004280000
 definitions=main-2005270151
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9633
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 cotscore=-2147483648
 suspectscore=0 bulkscore=0 clxscore=1015 impostorscore=0 malwarescore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2004280000 definitions=main-2005270151
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sat, May 23, 2020 at 10:29:19PM +0100, Pascal Terjan wrote:
> This is one of the 9 drivers redefining rfc1042_header.
> 

This is how the patch looks like in my email client:

https://marc.info/?l=linux-driver-devel&m=159026973821890&w=2

Do you see how the subject is far away from the body of the commit
message?  I normally only read the subject or the body when I'm
reviewing patches so it's good if the body is clear on its own.  Maybe
write something like:

"This driver creates a local definitions of "rtw_rfc1042_header" and
"rtw_bridge_tunnel_header" but it should just use the standard definitions
from cfg80211.h."

>  void _rtw_init_sta_recv_priv(struct sta_recv_priv *psta_recvpriv)
> @@ -1625,11 +1622,11 @@ sint wlanhdr_to_ethhdr(union recv_frame *precvframe)
>  	psnap_type = ptr+pattrib->hdrlen + pattrib->iv_len+SNAP_SIZE;
>  	/* convert hdr + possible LLC headers into Ethernet header */
>  	/* eth_type = (psnap_type[0] << 8) | psnap_type[1]; */
> -	if ((!memcmp(psnap, rtw_rfc1042_header, SNAP_SIZE) &&
> -		(memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2)) &&
> -		(memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2))) ||
> -		/* eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) || */
> -		 !memcmp(psnap, rtw_bridge_tunnel_header, SNAP_SIZE)) {
> +	if ((!memcmp(psnap, rfc1042_header, SNAP_SIZE) &&
> +	     memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2) &&
> +	     memcmp(psnap_type, SNAP_ETH_TYPE_APPLETALK_AARP, 2)) ||
> +	    /* eth_type != ETH_P_AARP && eth_type != ETH_P_IPX) || */
> +	    !memcmp(psnap, bridge_tunnel_header, SNAP_SIZE)) {
>  		/* remove RFC1042 or Bridge-Tunnel encapsulation and replace EtherType */
>  		bsnaphdr = true;

Your indenting is correct, but I would probably do that in a separate
patch.  It makes it harder to review.  Also probably delete the
commented out code.  Do you see how if we don't touch the indenting then
it doesn't raise the question about if we should delete the comments as
well?

regards,
dan carpenter

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
