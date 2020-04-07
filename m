Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A661A0EF8
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 16:16:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8010987D7C;
	Tue,  7 Apr 2020 14:16:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eM84skLktX2n; Tue,  7 Apr 2020 14:16:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id E948287D33;
	Tue,  7 Apr 2020 14:16:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5CBCD1BF866
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 14:16:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 58F9086A54
 for <devel@linuxdriverproject.org>; Tue,  7 Apr 2020 14:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FDruvp4LCGWF for <devel@linuxdriverproject.org>;
 Tue,  7 Apr 2020 14:16:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9E87586A51
 for <devel@driverdev.osuosl.org>; Tue,  7 Apr 2020 14:16:30 +0000 (UTC)
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 037ED3vM172731;
 Tue, 7 Apr 2020 14:16:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2020-01-29;
 bh=yK09YV7sHccZ+in/N/EnR8J9sdEjaYyJawI3sE50HS8=;
 b=Eqs64c8kq+8i/FiSWw/q+MCzbqzmXi52Nmfj3oTE7D9H7jPPRxsvTmN53Px4uiEdTG/Y
 EZT1ZMQNhAANBVqumbdqC0fYBs+NnI3MesiDvtQeWK/HJueP3dwK53jfA5C7bo1sDFXd
 oOznTTn2BzQLt4XKgtW3grdsq2lfrKnJcGpsLL6bR9bMTQdlfuMo7LQF0EhvqVj5IFdJ
 TJsFNLRe5tkWvoEsVPFZbO0bWbRSsBJyAaTof2LYyY8yeCWcxLOnzL4K0Zr2tOPQ10PU
 UTBczpNo3Bdm3jEoffqcCjqkD/27DifD4NM4vvchNzowuWqHSqlgTCmLP/OiQdnpnfc8 Lg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 306jvn570u-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 Apr 2020 14:16:29 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 037ECTPD066162;
 Tue, 7 Apr 2020 14:16:29 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 30839tfuee-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 07 Apr 2020 14:16:29 +0000
Received: from abhmp0004.oracle.com (abhmp0004.oracle.com [141.146.116.10])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 037EGQHo007736;
 Tue, 7 Apr 2020 14:16:26 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 07 Apr 2020 07:16:25 -0700
Date: Tue, 7 Apr 2020 17:16:16 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Wang Hai <wanghai38@huawei.com>
Subject: Re: [PATCH] Staging: rtl8192e: remove set but not used variable
 'tmpRegC'
Message-ID: <20200407141616.GL2001@kadam>
References: <1586262964-4582-1-git-send-email-wanghai38@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1586262964-4582-1-git-send-email-wanghai38@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9583
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 spamscore=0 malwarescore=0
 mlxscore=0 mlxlogscore=999 bulkscore=0 suspectscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2004070124
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9583
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0
 mlxlogscore=999 mlxscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1011 malwarescore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004070124
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
Cc: devel@driverdev.osuosl.org, robsonde@gmail.com, puranjay12@gmail.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 zhengbin13@huawei.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gVHVlLCBBcHIgMDcsIDIwMjAgYXQgMDg6MzY6MDRBTSAtMDQwMCwgV2FuZyBIYWkgd3JvdGU6
Cj4gRml4ZXMgZ2NjICctV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlJyB3YXJuaW5nOgo+IAo+IGRy
aXZlcnMvc3RhZ2luZy9ydGw4MTkyZS9ydGw4MTkyZS9yODE5MkVfZGV2LmM6IEluIGZ1bmN0aW9u
IHJ0bDkyZV9zdGFydF9hZGFwdGVyOgo+IGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkyZS9ydGw4MTky
ZS9yODE5MkVfZGV2LmM6NjkzOjE1OiB3YXJuaW5nOiB2YXJpYWJsZSDigJh0bXBSZWdD4oCZIHNl
dCBidXQgbm90IHVzZWQgWy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGVdCj4gCj4gY29tbWl0IDk0
YTc5OTQyNWVlZSAoInJ0bDgxOTJlOiBTcGxpdCBpbnRvIHR3byBkaXJlY3RvcmllcyIpCj4gaW52
b2x2ZWQgdGhpcywgcmVtb3ZlIGl0Lgo+IAo+IFJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90IDxodWxr
Y2lAaHVhd2VpLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBXYW5nIEhhaSA8d2FuZ2hhaTM4QGh1YXdl
aS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTkyZS9ydGw4MTkyZS9yODE5MkVf
ZGV2LmMgfCA2ICsrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvcnRsODE5MmUvcnRs
ODE5MmUvcjgxOTJFX2Rldi5jIGIvZHJpdmVycy9zdGFnaW5nL3J0bDgxOTJlL3J0bDgxOTJlL3I4
MTkyRV9kZXYuYwo+IGluZGV4IGRkY2Q3ODguLmZmOTM0YWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9zdGFnaW5nL3J0bDgxOTJlL3J0bDgxOTJlL3I4MTkyRV9kZXYuYwo+ICsrKyBiL2RyaXZlcnMv
c3RhZ2luZy9ydGw4MTkyZS9ydGw4MTkyZS9yODE5MkVfZGV2LmMKPiBAQCAtNjkwLDcgKzY5MCw3
IEBAIGJvb2wgcnRsOTJlX3N0YXJ0X2FkYXB0ZXIoc3RydWN0IG5ldF9kZXZpY2UgKmRldikKPiAg
CXU4IHRtcHZhbHVlOwo+ICAJdTggSUNWZXJzaW9uLCBTd2l0Y2hpbmdSZWd1bGF0b3JPdXRwdXQ7
Cj4gIAlib29sIGJmaXJtd2FyZW9rID0gdHJ1ZTsKPiAtCXUzMiB0bXBSZWdBLCB0bXBSZWdDLCBU
ZW1wQ0NrOwo+ICsJdTMyIHRtcFJlZ0EsIFRlbXBDQ2s7Cj4gIAlpbnQgaSA9IDA7Cj4gIAl1MzIg
cmV0cnlfdGltZXMgPSAwOwo+ICAKPiBAQCAtODg5LDggKzg4OSw4IEBAIGJvb2wgcnRsOTJlX3N0
YXJ0X2FkYXB0ZXIoc3RydWN0IG5ldF9kZXZpY2UgKmRldikKPiAgCQlpZiAocHJpdi0+SUNfQ3V0
ID49IElDX1ZlcnNpb25DdXRfRCkgewo+ICAJCQl0bXBSZWdBID0gcnRsOTJlX2dldF9iYl9yZWco
ZGV2LCByT0ZETTBfWEFUeElRSW1iYWxhbmNlLAo+ICAJCQkJCQkgICAgYk1hc2tEV29yZCk7Cj4g
LQkJCXRtcFJlZ0MgPSBydGw5MmVfZ2V0X2JiX3JlZyhkZXYsIHJPRkRNMF9YQ1R4SVFJbWJhbGFu
Y2UsCj4gLQkJCQkJCSAgICBiTWFza0RXb3JkKTsKPiArCQkJcnRsOTJlX2dldF9iYl9yZWcoZGV2
LCByT0ZETTBfWENUeElRSW1iYWxhbmNlLAo+ICsJCQkJCSAgYk1hc2tEV29yZCk7CgpEZWxldGUg
dGhlIGNhbGwgYXMgd2VsbC4KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
