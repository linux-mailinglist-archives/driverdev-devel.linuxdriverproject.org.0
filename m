Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E86EA6E71C
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 16:04:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C85C084A0B;
	Fri, 19 Jul 2019 14:04:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O2q8A9tCGw6x; Fri, 19 Jul 2019 14:04:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D98C0844EB;
	Fri, 19 Jul 2019 14:04:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7FFBC1BF48C
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 14:04:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7D00687FDE
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 14:04:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Dh9Y4N86dUj for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 14:04:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3B0BA87FCC
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 14:04:44 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6JE47Zk157192;
 Fri, 19 Jul 2019 14:04:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=mOGnxW2oeyR7eLgIoEBtNWX4Q3za0clxt09dAtyi8dc=;
 b=ALI4tU3l3h/MtvFiWSa1N6ifdl7pe7r5174pSx4JJtgoiV1DeaT+XXLw1P3nXUSYKRfP
 lbp/h/t2Thc+nvJLvBt2qmK1szgzniHzUecvknFy/5+FA2ZA4u0I7xnMFOFMuSOVxKty
 LL4C8VNVmzspDeGP4B9Hnd1yRAPBhPKEm7Lip1Y/sx17A0UIpTgs2sVUQplPEh1Lm0d9
 4250roVmbhH9Hi/JStYThcbIPFRUqG8RQCCIMqfebyIrM8cpyBMULLZ6LThB8rMZLjfJ
 W4tq6ywgqkYR1Uc3qhG+VV2ScZ9o8t4dBQ31jAgjnzRl/qLM2iNh3y1WINglyiMoLMRD zA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2130.oracle.com with ESMTP id 2tq6qu71m7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Jul 2019 14:04:42 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6JE3jH6031457;
 Fri, 19 Jul 2019 14:04:42 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2tsmcdm5y3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Jul 2019 14:04:42 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x6JE4fK2010649;
 Fri, 19 Jul 2019 14:04:41 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Jul 2019 14:04:40 +0000
Date: Fri, 19 Jul 2019 17:04:29 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH] staging: wilc1000: Merge memcpy + le32_to_cpus to
 get_unaligned_le32
Message-ID: <20190719140429.GI3111@kadam>
References: <20190719081005.4598-1-hslester96@gmail.com>
 <8c14743d-efe1-3e3a-0419-bde22f848751@microchip.com>
 <CANhBUQ3knUV44GiaB-xZMD8F6y8dcZQdznSmpk3E9ZKoakkBRQ@mail.gmail.com>
 <82dc6d2e-5f62-b2c7-296a-38f781628ec5@microchip.com>
 <20190719140133.GH3111@kadam>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719140133.GH3111@kadam>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9322
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907190159
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9322
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907190159
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
Cc: devel@driverdev.osuosl.org, linux-wireless@vger.kernel.org,
 gregkh@linuxfoundation.org, hslester96@gmail.com, linux-kernel@vger.kernel.org,
 Adham.Abozaeid@microchip.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCBKdWwgMTksIDIwMTkgYXQgMDU6MDE6MzNQTSArMDMwMCwgRGFuIENhcnBlbnRlciB3
cm90ZToKPiBPbiBGcmksIEp1bCAxOSwgMjAxOSBhdCAxMjowNTowN1BNICswMDAwLCBBamF5Lkth
dGhhdEBtaWNyb2NoaXAuY29tIHdyb3RlOgo+ID4gCj4gPiBPbiA3LzE5LzIwMTkgNToxNiBQTSwg
Q2h1aG9uZyBZdWFuIHdyb3RlOgo+ID4gPiAKPiA+ID4gPEFqYXkuS2F0aGF0QG1pY3JvY2hpcC5j
b20+IOS6jjIwMTnlubQ35pyIMTnml6XlkajkupQg5LiL5Y2INzozNOWGmemBk++8mgo+ID4gPj4K
PiA+ID4+IE9uIDcvMTkvMjAxOSAxOjQwIFBNLCBDaHVob25nIFl1YW4gd3JvdGU6Cj4gPiA+Pj4K
PiA+ID4+PiBNZXJnZSB0aGUgY29tYm8gdXNlIG9mIG1lbWNweSBhbmQgbGUzMl90b19jcHVzLgo+
ID4gPj4+IFVzZSBnZXRfdW5hbGlnbmVkX2xlMzIgaW5zdGVhZC4KPiA+ID4+PiBUaGlzIHNpbXBs
aWZpZXMgdGhlIGNvZGUuCj4gPiA+Pj4KPiA+ID4+PiBTaWduZWQtb2ZmLWJ5OiBDaHVob25nIFl1
YW4gPGhzbGVzdGVyOTZAZ21haWwuY29tPgo+ID4gPj4+IC0tLQo+ID4gPj4+ICBkcml2ZXJzL3N0
YWdpbmcvd2lsYzEwMDAvd2lsY193ZmlfY2Znb3BlcmF0aW9ucy5jIHwgMyArLS0KPiA+ID4+PiAg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+ID4gPj4+Cj4g
PiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93aWxjMTAwMC93aWxjX3dmaV9jZmdv
cGVyYXRpb25zLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2lsYzEwMDAvd2lsY193ZmlfY2Znb3BlcmF0
aW9ucy5jCj4gPiA+Pj4gaW5kZXggZDcyZmRkMzMzMDUwLi4xMmZiNGFkZDA1ZWMgMTAwNjQ0Cj4g
PiA+Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dpbGMxMDAwL3dpbGNfd2ZpX2NmZ29wZXJhdGlv
bnMuYwo+ID4gPj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy93aWxjMTAwMC93aWxjX3dmaV9jZmdv
cGVyYXRpb25zLmMKPiA+ID4+PiBAQCAtMTAzOCw4ICsxMDM4LDcgQEAgdm9pZCB3aWxjX3dmaV9w
MnBfcngoc3RydWN0IHdpbGNfdmlmICp2aWYsIHU4ICpidWZmLCB1MzIgc2l6ZSkKPiA+ID4+PiAg
ICAgICBzMzIgZnJlcTsKPiA+ID4+PiAgICAgICBfX2xlMTYgZmM7Cj4gPiA+Pj4KPiA+ID4+PiAt
ICAgICBtZW1jcHkoJmhlYWRlciwgKGJ1ZmYgLSBIT1NUX0hEUl9PRkZTRVQpLCBIT1NUX0hEUl9P
RkZTRVQpOwo+ID4gPj4+IC0gICAgIGxlMzJfdG9fY3B1cygmaGVhZGVyKTsKPiA+ID4+PiArICAg
ICBoZWFkZXIgPSBnZXRfdW5hbGlnbmVkX2xlMzIoYnVmZiAtIEhPU1RfSERSX09GRlNFVCk7Cj4g
PiA+Pj4gICAgICAgcGt0X29mZnNldCA9IEdFVF9QS1RfT0ZGU0VUKGhlYWRlcik7Cj4gPiA+Pj4K
PiA+ID4+PiAgICAgICBpZiAocGt0X29mZnNldCAmIElTX01BTkFHTUVNRU5UX0NBTExCQUNLKSB7
Cj4gPiA+Pj4KPiA+ID4+Cj4gPiA+PiBUaGFua3MgZm9yIHNlbmRpbmcgdGhlIHBhdGNoZXMuCj4g
PiA+Pgo+ID4gPj4gVGhlIGNvZGUgY2hhbmdlIGxvb2tzIG9rYXkgdG8gbWUuIEp1c3QgYSBtaW5v
ciBjb21tZW50LCBhdm9pZCB0aGUgdXNlIG9mCj4gPiA+PiBzYW1lIHN1YmplY3QgbGluZSBmb3Ig
ZGlmZmVyZW50IHBhdGNoZXMuCj4gPiA+IAo+ID4gPiBUaGVzZSB0d28gcGF0Y2hlcyBhcmUgaW4g
dGhlIHNhbWUgc3Vic3lzdGVtIGFuZCBzb2x2ZSB0aGUgc2FtZSBwcm9ibGVtLgo+ID4gPiBJIHNw
bGl0dGVkIHRoZW0gaW50byB0d28gcGF0Y2hlcyBieSBtaXN0YWtlIHNpbmNlIEkgZGlkIG5vdCBu
b3RpY2UgdGhlIHByb2JsZW1zCj4gPiA+IGluIHRoZSBzZWNvbmQgcGF0Y2ggd2hlbiBJIHNlbnQg
dGhlIGZpcnN0IG9uZS4KPiA+ID4gU2hvdWxkIEkgbWVyZ2UgdGhlIHR3byBwYXRjaGVzIGFuZCBy
ZXNlbmQ/Cj4gPiA+IAo+ID4gCj4gPiBZZXMsIHBsZWFzZSBnbyBhaGVhZCwgbWVyZ2UgdGhlIHBh
dGNoZXMgYW5kIHNlbmQgdGhlIHVwZGF0ZWQgdmVyc2lvbi4KPiA+IAo+IAo+IFRoaXMgaXMgd3Jv
bmcgYWR2aWNlLiAgRG9uJ3QgbWVyZ2UgdGhlIHBhdGNoZXMgYmVjYXVzZSB0aGV5IGFyZSBmb3IK
PiBkaWZmZXJlbnQgZHJpdmVycy4gIFRoZSBvcmlnaW5hbCBzdWJqZWN0cyBhcmUgZmluZSBiZWNh
dXNlIHRoZQo+IHN1YnN5c3RlbXMgYXJlIGRpZmZlcmVudCBzbyB0aGF0J3Mgb2theS4KPiAKCk9o
Li4uICBNeSBiYWQuLi4gIEkgd2FzIGxvb2tpbmcgYXQgdGhlIHdyb25nIHBhdGNoZXMuICA6UCAg
WW91IGFyZQoxMDAlIGNvcnJlY3QgQWpheS4gIE1lcmdlIHRoZSB0d28gcGF0Y2hlcyBhbmQgYWx3
YXlzIG1ha2Ugc3VyZSB0byBub3QKc2VuZCBtdWx0aXBsZSBwYXRjaGVzIHdpdGggdGhlIHNhbWUg
c3ViamVjdC4KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRy
aXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
