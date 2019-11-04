Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4BAEDD2D
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Nov 2019 11:58:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 66CB3895A9;
	Mon,  4 Nov 2019 10:58:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gwKAGByLr6e9; Mon,  4 Nov 2019 10:58:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29E98890AB;
	Mon,  4 Nov 2019 10:58:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C57981BF361
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:58:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF68C20526
 for <devel@linuxdriverproject.org>; Mon,  4 Nov 2019 10:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KPWYXrPe8I-2 for <devel@linuxdriverproject.org>;
 Mon,  4 Nov 2019 10:58:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by silver.osuosl.org (Postfix) with ESMTPS id 0040520523
 for <devel@driverdev.osuosl.org>; Mon,  4 Nov 2019 10:58:24 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA4AtrM6192477;
 Mon, 4 Nov 2019 10:58:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=4Huoh6wIugbFZjm22QuBBMKrcUJPLMn8KTchxHNOYUs=;
 b=Us4rdO0EZAqnQE6q0ebNjGiLk/WCjwlneykewTNpgc7fSmdinOhKH/ZQeXpBmQOxxi7J
 51gnEg3dU75yEIGmH5ni4BnLMp5p2dNq0oyY6eqSyLUrBL7gc4XXdT3eKg65IQqgiNsl
 98ahwAuAyY8CqGaT4c+ITllsOKkqByJrJNr0yMTFTW4vGIBM+ezl/9Jl+ss9SwIIv7Ca
 30D6y0HsjcePt7sGVfu1Sv+TMS7GTmGSXFsqNW2ZfZDJQQFZx4Gu7/HX6tXyl7g6lIwZ
 H1GmnuusRDTQa4uRFSAiWkAzNBYYVClL7XOv2VD8KodLu/ZSPyWg3smrrldWf8AKcdiU uQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2w12eqxa8e-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 04 Nov 2019 10:58:21 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id xA4AssUd142627;
 Mon, 4 Nov 2019 10:56:20 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3020.oracle.com with ESMTP id 2w1kxd1qcm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 04 Nov 2019 10:56:20 +0000
Received: from abhmp0022.oracle.com (abhmp0022.oracle.com [141.146.116.28])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id xA4AuJ7s000754;
 Mon, 4 Nov 2019 10:56:19 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 04 Nov 2019 02:56:19 -0800
Date: Mon, 4 Nov 2019 13:56:12 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH v2 07/10] staging: exfat: Clean up return codes -
 FFS_SUCCESS
Message-ID: <20191104105612.GG21796@kadam>
References: <20191104014510.102356-1-Valdis.Kletnieks@vt.edu>
 <20191104014510.102356-8-Valdis.Kletnieks@vt.edu>
 <20191104100413.GC10409@kadam> <128761.1572864835@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <128761.1572864835@turing-police>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9430
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1911040109
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9430
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1911040109
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
Cc: linux-fsdevel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDU6NTM6NTVBTSAtMDUwMCwgVmFsZGlzIEtsxJN0bmll
a3Mgd3JvdGU6Cj4gT24gTW9uLCAwNCBOb3YgMjAxOSAxMzowNDoxNCArMDMwMCwgRGFuIENhcnBl
bnRlciBzYWlkOgo+ID4gT24gU3VuLCBOb3YgMDMsIDIwMTkgYXQgMDg6NDU6MDNQTSAtMDUwMCwg
VmFsZGlzIEtsZXRuaWVrcyB3cm90ZToKPiA+ID4gLQlpZiAoc2VjdG9yX3JlYWQoc2IsIHNlYywg
JmJwLT5idWZfYmgsIDEpICE9IEZGU19TVUNDRVNTKSB7Cj4gPiA+ICsJaWYgKHNlY3Rvcl9yZWFk
KHNiLCBzZWMsICZicC0+YnVmX2JoLCAxKSAhPSAwKSB7Cj4gPgo+ID4gSXQncyBiZXR0ZXIgdG8g
anVzdCByZW1vdmUgdGhlICIhPSAwIiBkb3VibGUgbmVnYXRpdmUuICAhPSAwIHNob3VsZCBiZQo+
ID4gdXNlZCB3aGVuIHdlIGFyZSB0YWxraW5nIGFib3V0IHRoZSBudW1iZXIgemVybyBhcyBpbiAi
Y250ICE9IDAiIGFuZCBmb3IKPiA+ICJzdHJjbXAoZm9vLCBiYXIpICE9IDAiIHdoZXJlIGl0IG1l
YW5zIHRoYXQgImZvbyAhPSBiYXIiLgo+IAo+ICJGaXggdXAgPT0wIGFuZCAhPTAiIGlzIGluZGVl
ZCBvbiB0aGUgdG8tZG8gbGlzdC4KPiAKPiBUaGlzIHBhdGNoIGNvbnZlcnRlZCA4MiB1c2VzIG9m
IEZGU19TVUNDRVNTLCBvZiB3aGljaCAzMyBoYWQgdGhlICE9IGlkaW9tIGluCj4gdXNlLiAgTWVh
bndoaWxlLCBvdmVyYWxsIHRoZXJlJ3MgNTMgJyE9IDAnIGFuZCA5NSAnPT0gMCcgdXNlcy4KPiAK
PiBJbiBvdGhlciB3b3JkcywgZXZlbiBpZiBJIGZpeGVkIGFsbCBvZiB0aG9zZSB0aGF0IHdlcmUg
aW52b2x2ZWQgaW4gdGhpcyBwYXRjaCwKPiB0aGVyZSB3b3VsZCAqc3RpbGwqIGJlIG1vcmUgcGF0
Y2hpbmcgdG8gZG8uCgpWZXJ5IGdvb2QuICBTb3VuZHMgbGlrZSB0aGUgcGxhbi4KCnJlZ2FyZHMs
CmRhbiBjYXJwZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0
dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2Ry
aXZlcmRldi1kZXZlbAo=
