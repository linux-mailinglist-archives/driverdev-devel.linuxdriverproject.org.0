Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C017EAE911
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Sep 2019 13:27:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5C3B621541;
	Tue, 10 Sep 2019 11:27:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LadWOO3-AT2Q; Tue, 10 Sep 2019 11:27:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4E07720503;
	Tue, 10 Sep 2019 11:27:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 518591BF5AC
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 11:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4D6EE204D6
 for <devel@linuxdriverproject.org>; Tue, 10 Sep 2019 11:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id veocLyn4F8Hk for <devel@linuxdriverproject.org>;
 Tue, 10 Sep 2019 11:27:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by silver.osuosl.org (Postfix) with ESMTPS id 7A0951FEDF
 for <devel@driverdev.osuosl.org>; Tue, 10 Sep 2019 11:27:14 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8ABNeNa016028;
 Tue, 10 Sep 2019 11:27:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2019-08-05;
 bh=i9SWZWg8DmcXWp3fnhkTPVRtLG9I2F4flnfmYaltpPA=;
 b=jc9c2q27oN/Sy2WrefdD3FvV7b1uZAEtNW4b87XapfvzN0ODXjkHfvrlShpWqYyg5Ut+
 OPKLBx/GU6hkUIf9Xj4IhphhK2bmRgJLaLc23ADEEpELwa7EZQ7n6Vecp25RxK3uJv5f
 vfA8T5H8i5GsCmz0lSjvdoU0YqZhPImX5e5j+HtdgM+jiATrqHi5Lb3z7HicLfYYqQnQ
 5qB6234VCwJph85e7jhj5lUdGd6RomAqkPb+N2ZiHp0yMP5tt8LPJFi2u0updxs6TIvA
 Hd86zgNtv9osU7E+Dki1vUWIC53nwGqfn8/hv6g/049QNsgMgFWuwTjgbfACeUZhFtnh 6A== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2130.oracle.com with ESMTP id 2uw1m8tpgg-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 11:27:12 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x8ABNvGm003340;
 Tue, 10 Sep 2019 11:27:11 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2uwpjvpp8t-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 10 Sep 2019 11:27:11 +0000
Received: from abhmp0009.oracle.com (abhmp0009.oracle.com [141.146.116.15])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x8ABR93O023364;
 Tue, 10 Sep 2019 11:27:10 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 10 Sep 2019 04:27:08 -0700
Date: Tue, 10 Sep 2019 14:27:00 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sandro Volery LKML <lkml.sandro@volery.com>
Subject: Re: [PATCH v2] Staging: gasket: Use temporaries to reduce line length.
Message-ID: <20190910112700.GB30834@kadam>
References: <20190910050557.GA8338@volery>
 <73C0743C-6864-4868-829B-D567F12A9463@volery.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <73C0743C-6864-4868-829B-D567F12A9463@volery.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1909100115
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9375
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1906280000
 definitions=main-1909100115
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
 linux-kernel@vger.kernel.org, Sandro Volery <sandro@volery.com>,
 rspringer@google.com, joe@perches.com, toddpoynor@google.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBTZXAgMTAsIDIwMTkgYXQgMDc6MTE6MjZBTSArMDIwMCwgU2FuZHJvIFZvbGVyeSBM
S01MIHdyb3RlOgo+IFdvdy4uLiBJIGNoZWNrZWQsIGNvbXBpbGVkIGFuZCBzdGlsbCBzZW50IHRo
ZSB3cm9uZyB0aGluZyBhZ2Fpbi4gSSdtCj4gZ29ubmEgaGF2ZSB0byBnaXZlIHRoaXMgdXAgc29v
biBpZiBpIGNhbid0IGdldCBpdCByaWdodC4KPiAKClRoZSBtaXN0YWtlIHdhcyB1c2luZyBnYXNr
ZXRfcGFnZV90YWJsZV9udW1fc2ltcGxlX2VudHJpZXMoKSBpbnN0ZWFkCm9mIGdhc2tldF9wYWdl
X3RhYmxlX251bV9lbnRyaWVzKCk/CgpXaGVuIEkgd3JpdGUgYSBwYXRjaCwgSSBhbHdheXMgcXVl
dWUgaXQgdXAgYW5kIHRoZSBsZXQgaXQgc2l0IGluIG15Cm91dGJveCBvdmVybmlnaHQgc28gSSBj
YW4gcmV2aWV3IGl0IGFnYWluIGluIHRoZSBtb3JuaW5nLiAgT3RoZXJ3aXNlIG15Cm1pbmQgaXMg
Y2xvdWRlZCB3aXRoIG90aGVyIGVtb3Rpb25zIGFuZCBJIGNhbid0IHJldmlldyBvYmplY3RpdmVs
eS4KVGhlcmUgaXMgbmV2ZXIgYSBydXNoLgoKPiBTYW5kcm8gVgo+IAo+ID4gT24gMTAgU2VwIDIw
MTksIGF0IDA3OjA2LCBTYW5kcm8gVm9sZXJ5IDxzYW5kcm9Adm9sZXJ5LmNvbT4gd3JvdGU6Cj4g
PiAKPiA+IO+7v1VzaW5nIHRlbXBvcmFyaWVzIGZvciBnYXNrZXRfcGFnZV90YWJsZSBlbnRyaWVz
IHRvIHJlbW92ZSBzY25wcmludGYoKQo+ID4gc3RhdGVtZW50cyBhbmQgcmVkdWNlIGxpbmUgbGVu
Z3RoLCBhcyBzdWdnZXN0ZWQgYnkgSm9lIFBlcmNoZXMuIFRoYW5rcyEKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeXl5e
Xl5eCgpEb24ndCBwdXQgdGhpcyBpbiB0aGUgY29tbWl0IGxvZy4gIDpQCgpyZWdhcmRzLApkYW4g
Y2FycGVudGVyCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
