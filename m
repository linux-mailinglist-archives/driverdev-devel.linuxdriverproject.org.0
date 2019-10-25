Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EACC1E4857
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Oct 2019 12:14:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id A0FFF8837F;
	Fri, 25 Oct 2019 10:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ocGuvU1rZfZ6; Fri, 25 Oct 2019 10:14:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01A9387B39;
	Fri, 25 Oct 2019 10:14:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B1C5D1BF2F1
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 10:14:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AE5AC854B4
 for <devel@linuxdriverproject.org>; Fri, 25 Oct 2019 10:14:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JmPF-QWP-NPd for <devel@linuxdriverproject.org>;
 Fri, 25 Oct 2019 10:14:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0F766854A7
 for <devel@driverdev.osuosl.org>; Fri, 25 Oct 2019 10:14:34 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9PA3dRX166888;
 Fri, 25 Oct 2019 10:14:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=GpQlnPL9nKjLQO0BGa0/5SrRC2qgpRhJcmvY1jIKoYI=;
 b=KyYvYWGHdlZ7iiuKYbm3hWax+A8BgOysWb5jYHOifMKs3Yg0eBikXnRknRnwreBkwx+5
 LwQCuwGlltWynSwquQ74ZpPpoP9lIJ4dHBZ3x+6sWOCnDAJzwc0d6OKVwltUqsh9bfG4
 S4TxPOHbN5xdNODidOpTeSdbM+Jc/YljP67Yok+PCxTEuukbK3X09U3ibPTZVpfNMgjk
 rWz2DRdGMeS3odWBji5/GFnx8g2LqcNt2spNfQZx+uEWc4j60VQIyac4lg3FwZ2iEV0K
 YtQ4nmZ6Xzw739s7rOtFBLBGZyNlcBFV9b/EVaPIy8RQhqkN8rrmT+RILspwOYKTpvE5 ug== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2120.oracle.com with ESMTP id 2vqu4r9t4q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 25 Oct 2019 10:14:33 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x9P9vHse113652;
 Fri, 25 Oct 2019 10:14:32 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by userp3030.oracle.com with ESMTP id 2vug0dxmjp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 25 Oct 2019 10:14:32 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x9PAEQim031517;
 Fri, 25 Oct 2019 10:14:26 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 25 Oct 2019 03:14:25 -0700
Date: Fri, 25 Oct 2019 13:14:15 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>
Subject: Re: [PATCH 04/15] staging: exfat: Clean up return codes -
 FFS_PERMISSIONERR
Message-ID: <20191025101415.GL24678@kadam>
References: <20191024155327.1095907-1-Valdis.Kletnieks@vt.edu>
 <20191024155327.1095907-5-Valdis.Kletnieks@vt.edu>
 <915cd2a3ee58222b63c14f9f1819a0aa0b379a4f.camel@perches.com>
 <1107916.1571934467@turing-police>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1107916.1571934467@turing-police>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9420
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1908290000 definitions=main-1910250093
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9420
 signatures=668684
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1908290000
 definitions=main-1910250094
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
Cc: Joe Perches <joe@perches.com>, linux-fsdevel@vger.kernel.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgMTI6Mjc6NDdQTSAtMDQwMCwgVmFsZGlzIEtsxJN0bmll
a3Mgd3JvdGU6Cj4gT24gVGh1LCAyNCBPY3QgMjAxOSAwOToyMzozMyAtMDcwMCwgSm9lIFBlcmNo
ZXMgc2FpZDoKPiA+IE9uIFRodSwgMjAxOS0xMC0yNCBhdCAxMTo1MyAtMDQwMCwgVmFsZGlzIEts
ZXRuaWVrcyB3cm90ZToKPiAKPiA+ID4gIAlpZiAoZXJyKSB7Cj4gPiA+IC0JCWlmIChlcnIgPT0g
RkZTX1BFUk1JU1NJT05FUlIpCj4gPiA+ICsJCWlmIChlcnIgPT0gLUVQRVJNKQo+ID4gPiAgCQkJ
ZXJyID0gLUVQRVJNOwo+ID4gPiAgCQllbHNlIGlmIChlcnIgPT0gRkZTX0lOVkFMSURQQVRIKQo+
ID4gPiAgCQkJZXJyID0gLUVJTlZBTDsKPiA+Cj4gPiBUaGVzZSB0ZXN0IGFuZCBhc3NpZ24gdG8g
c2FtZSB2YWx1ZSBibG9ja3MgbG9vayBraW5kYSBzaWxseS4KPiAKPiBPbmUgcGF0Y2gsIG9uZSB0
aGluZy4gIFRob3NlIGFyZSBnZXR0aW5nIGNsZWFuZWQgdXAgaW4gYSBzdWJzZXF1ZW50IHBhdGNo
LjopCgpJIHdhcyBqdXN0IGdpdmluZyBhbiBpbXByb21wdHUgbGVjdHVyZSBvbiB0aGlzIGxhc3Qg
d2Vlay4uLi4gIFRoZSBvbmUKdGhpbmcgcGVyIHBhdGNoIG1lYW5zIHdlIGNsZWFudXAgdGhlIGZh
bGxvdXQgdGhhdCByZXN1bHRzIGZyb20gdGhlCmNoYW5nZS4gIFNvIGlmIHlvdSByZW5hbWUgYSBm
dW5jdGlvbiB0aGVuIHlvdSBoYXZlIHJlLWluZGVudCB0aGUKcGFyYW1ldGVycyBldGMuICBJZiB5
b3UgcmVtb3ZlIGEgY2FzdCBmcm9tICh0eXBlKShmb28gKyBiYXIpIHRoZW4KcmVtb3ZlIGFsbCB0
aGUgZXh0cmEgcGFyZW50aGVzZXMgYW5kIHNvIG9uLgoKKEkgZG9uJ3QgaGF2ZSBzdHJvbmcgZmVl
bGluZ3MgYWJvdXQgdGhpcyBwYXRjaCwgYnV0IEkgaGF2ZSBqdXN0IGJlZW4KdHJ5aW5nIHRvIGV4
cGxhaW4gdGhlIG9uZSB0aGluZyBydWxlIHJlY2VudGx5KS4KCnJlZ2FyZHMsCmRhbiBjYXJwZW50
ZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVs
IG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJk
ZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZl
bAo=
