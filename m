Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 934B730A3EB
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Feb 2021 10:03:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6943420116;
	Mon,  1 Feb 2021 09:03:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TOboG4v8P8jy; Mon,  1 Feb 2021 09:03:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 1A52820381;
	Mon,  1 Feb 2021 09:03:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7BE491BF3C3
 for <devel@linuxdriverproject.org>; Mon,  1 Feb 2021 09:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 77A00860C5
 for <devel@linuxdriverproject.org>; Mon,  1 Feb 2021 09:03:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XNbmcEqJMCq7 for <devel@linuxdriverproject.org>;
 Mon,  1 Feb 2021 09:03:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0162.hostedemail.com
 [216.40.44.162])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6115E85F9D
 for <devel@driverdev.osuosl.org>; Mon,  1 Feb 2021 09:03:44 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 71DBA180206DE
 for <devel@driverdev.osuosl.org>; Mon,  1 Feb 2021 04:17:03 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay08.hostedemail.com (Postfix) with ESMTP id 01EB2182CED34;
 Mon,  1 Feb 2021 04:17:01 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:69:355:379:599:800:960:973:988:989:1260:1261:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2559:2562:2828:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3872:4225:4321:5007:6119:7652:7875:7903:9207:10004:10400:10848:11026:11657:11658:11914:12043:12296:12297:12438:12555:12740:12895:13069:13161:13229:13311:13357:13439:13894:14181:14659:14721:14915:21080:21627:21987:21990:30054:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:2, LUA_SUMMARY:none
X-HE-Tag: fly41_2816b5b275bf
X-Filterd-Recvd-Size: 2685
Received: from [192.168.1.159] (unknown [47.151.137.21])
 (Authenticated sender: joe@perches.com)
 by omf19.hostedemail.com (Postfix) with ESMTPA;
 Mon,  1 Feb 2021 04:17:00 +0000 (UTC)
Message-ID: <fb815f4d3d75cdb10add70378de1271bc8d6297e.camel@perches.com>
Subject: Re: [PATCH] Staging: wimax: i2400m: fixing several coding style
 issues.
From: Joe Perches <joe@perches.com>
To: dev.dragon@bk.ru, gregkh@linuxfoundation.org
Date: Sun, 31 Jan 2021 20:16:58 -0800
In-Reply-To: <20210131204250.112299-1-dev.dragon@bk.ru>
References: <20210131204250.112299-1-dev.dragon@bk.ru>
User-Agent: Evolution 3.38.1-1 
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Sun, 2021-01-31 at 23:42 +0300, dev.dragon@bk.ru wrote:

> diff --git a/drivers/staging/wimax/i2400m/rx.c b/drivers/staging/wimax/i2=
400m/rx.c
[]
> @@ -764,9 +763,9 @@ unsigned __i2400m_roq_update_ws(struct i2400m *i2400m=
, struct i2400m_roq *roq,
> =A0				 new_nws);
> =A0			__skb_unlink(skb_itr, &roq->queue);
> =A0			i2400m_net_erx(i2400m, skb_itr, roq_data_itr->cs);
> -		}
> -		else
> +		} else {
> =A0			break;	/* rest of packets all nsn_itr > nws */
> +		}
> =A0	}

Rather than merely fixing what checkpatch complains about, it'd be
better to reverse the test above and break directly then unindent
the expected block.
---
 drivers/staging/wimax/i2400m/rx.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/wimax/i2400m/rx.c b/drivers/staging/wimax/i240=
0m/rx.c
index c9fb619a9e01..caeba9694b4e 100644
--- a/drivers/staging/wimax/i2400m/rx.c
+++ b/drivers/staging/wimax/i2400m/rx.c
@@ -757,16 +757,12 @@ unsigned __i2400m_roq_update_ws(struct i2400m *i2400m=
, struct i2400m_roq *roq,
 		roq_data_itr =3D (struct i2400m_roq_data *) &skb_itr->cb;
 		nsn_itr =3D __i2400m_roq_nsn(roq, roq_data_itr->sn);
 		/* NSN bounds assumed correct (checked when it was queued) */
-		if (nsn_itr < new_nws) {
-			d_printf(2, dev, "ERX: roq %p - release skb %p "
-				 "(nsn %u/%u new nws %u)\n",
-				 roq, skb_itr, nsn_itr, roq_data_itr->sn,
-				 new_nws);
-			__skb_unlink(skb_itr, &roq->queue);
-			i2400m_net_erx(i2400m, skb_itr, roq_data_itr->cs);
-		}
-		else
-			break;	/* rest of packets all nsn_itr > nws */
+		if (nsn_itr >=3D new_nws)
+			break;
+		d_printf(2, dev, "ERX: roq %p - release skb %p (nsn %u/%u new nws %u)\n",
+			 roq, skb_itr, nsn_itr, roq_data_itr->sn, new_nws);
+		__skb_unlink(skb_itr, &roq->queue);
+		i2400m_net_erx(i2400m, skb_itr, roq_data_itr->cs);
 	}
 	roq->ws =3D sn;
 	return new_nws;

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
