Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 775CAC9D70
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Oct 2019 13:34:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0C9E386204;
	Thu,  3 Oct 2019 11:34:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vkh_K_xPwoby; Thu,  3 Oct 2019 11:34:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9775686203;
	Thu,  3 Oct 2019 11:34:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2A90B1BF9B7
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 11:34:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 218A786B7B
 for <devel@linuxdriverproject.org>; Thu,  3 Oct 2019 11:34:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZlisE+BNzzJa for <devel@linuxdriverproject.org>;
 Thu,  3 Oct 2019 11:34:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2889986762
 for <devel@driverdev.osuosl.org>; Thu,  3 Oct 2019 11:34:42 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x93BXvVO133419;
 Thu, 3 Oct 2019 11:34:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=ER+a2BxvyuPvFP+5B1+t/eEBvhU2exoZo5NNX+TZSPo=;
 b=qugWByDP7h2kyZmosEsA//CzOArVNvhkCVGLxNlY1WOzTGzEUn7pSrcWWiIpvNZjCx9o
 OcjuayS1A/KLU9vIvKtBGF7nXiE2qqyCRyxGpEkBF1h0gSIDI2zyokb4TDfbhxakbPMq
 thhCTFx5LgGmQKGa+57K99TbnS+fLlOlaFpYkKr1l3TscksQiLmtAj3RnWrkzP2DyoW4
 Isy6Ksevpvc8IlPN1HprJM0B5Ain9o53TNtczfzlHHg7PH4mh5DGe7t+xZOIf6firg+U
 snA6g3ezW8XbNS+G2kseHOCWQ0/lMhJ+KubLFhJfX692NrThnXslDcjKj6joCovu4gQZ eA== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2v9xxv3bm2-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 03 Oct 2019 11:34:41 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x93BYMqu059837;
 Thu, 3 Oct 2019 11:34:40 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by aserp3020.oracle.com with ESMTP id 2vckyqmerm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 03 Oct 2019 11:34:40 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x93BYcG0006862;
 Thu, 3 Oct 2019 11:34:39 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Thu, 03 Oct 2019 04:34:38 -0700
Date: Thu, 3 Oct 2019 14:34:29 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH] drivers/staging/exfat - explain the fs_sync() issue in
 TODO
Message-ID: <20191003113429.GS22609@kadam>
References: <9837.1570042895@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9837.1570042895@turing-police>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9398
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910030108
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9398
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910030108
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
 linux-kernel@vger.kernel.org, Saiyam Doshi <saiyamdoshi.in@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gV2VkLCBPY3QgMDIsIDIwMTkgYXQgMDM6MDE6MzVQTSAtMDQwMCwgVmFsZGlzIEtsxJN0bmll
a3Mgd3JvdGU6Cj4gV2UndmUgc2VlbiBzZXZlcmFsIGluY29ycmVjdCBwYXRjaGVzIGZvciBmc19z
eW5jKCkgY2FsbHMgaW4gdGhlIGV4ZmF0IGRyaXZlci4KPiBBZGQgY29kZSB0byB0aGUgVE9ETyB0
aGF0IGV4cGxhaW5zIHRoaXMgaXNuJ3QganVzdCBhIGRlbGV0ZSBjb2RlIGFuZCByZWZhY3RvciwK
PiBidXQgdGhhdCBhY3R1YWwgYW5hbHlzaXMgb2Ygd2hlbiB0aGUgZmlsZXN5c3RlbSBzaG91bGQg
YmUgZmx1c2hlZCB0byBkaXNrCj4gbmVlZHMgdG8gYmUgZG9uZS4KPiAKClRoaXMgZG9lc24ndCBo
ZWxwIGF0IGFsbCBiZWNhdXNlIG5vIG9uZSBjYW4gYmUgZXhwZWN0ZWQgdG8gcmVhZCBpdC4KUHV0
IGEgY29tbWVudCBpbiB0aGUgY29kZSB3aGljaCBzYXlzIHNvbWV0aGluZyBsaWtlOgoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF9zdXBlci5jIGIvZHJpdmVycy9zdGFn
aW5nL2V4ZmF0L2V4ZmF0X3N1cGVyLmMKaW5kZXggMjI5ZWNhYmU3YTkzLi5jMTcxMGQ5OTg3NWUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF9zdXBlci5jCisrKyBiL2Ry
aXZlcnMvc3RhZ2luZy9leGZhdC9leGZhdF9zdXBlci5jCkBAIC0yODcsNiArMjg3LDEzIEBAIHN0
YXRpYyBERUZJTkVfU0VNQVBIT1JFKHpfc2VtKTsKIAogc3RhdGljIGlubGluZSB2b2lkIGZzX3N5
bmMoc3RydWN0IHN1cGVyX2Jsb2NrICpzYiwgYm9vbCBkb19zeW5jKQogeworCS8qCisJICogT2N0
IDIwMTk6ICBQbGVhc2UsIGRvIG5vdCBkZWxldGUgdGhpcyBjb2RlIG9yIHRoZSBjYWxsZXJzLiAg
VGhpcworCSAqIGNvZGUgaXMgb2J2aW91c2x5IGJvZ3VzIGFuZCBtYW55IG9mIHRoZSBjYWxsZXJz
IGFyZSBkZWFkIGNvZGUsIHllcywKKwkgKiBidXQgaXQgbWF5IGhvbGQgY2x1ZXMgYXMgdG8gd2hl
biBzeW5jaW5nIGlzIHJlcXVpcmVkLiAgU29tZW9uZSBuZWVkcworCSAqIHRvIGdvIHRocm91Z2gg
YW5kIGF1ZGl0IGl0IHJlYWxseSBjYXJlZnVsbHkuCisJICoKKwkgKi8KIAlpZiAoZG9fc3luYykK
IAkJYmRldl9zeW5jKHNiKTsKIH0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5v
cmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGlu
Zm8vZHJpdmVyZGV2LWRldmVsCg==
