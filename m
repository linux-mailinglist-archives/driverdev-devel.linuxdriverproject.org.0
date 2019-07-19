Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 381086E714
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Jul 2019 16:01:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CF7E120554;
	Fri, 19 Jul 2019 14:01:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SDdKzAm5yYVd; Fri, 19 Jul 2019 14:01:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CE2882048B;
	Fri, 19 Jul 2019 14:01:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FC1A1BF2A6
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 14:01:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1C67F87FDE
 for <devel@linuxdriverproject.org>; Fri, 19 Jul 2019 14:01:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3gJL1YY5hA82 for <devel@linuxdriverproject.org>;
 Fri, 19 Jul 2019 14:01:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from aserp2120.oracle.com (aserp2120.oracle.com [141.146.126.78])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8114C87FCC
 for <devel@driverdev.osuosl.org>; Fri, 19 Jul 2019 14:01:43 +0000 (UTC)
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6JDn8n3038121;
 Fri, 19 Jul 2019 14:01:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=X6wMOR1hKPNrM0QQ+tB1C00yfQWcVs6T/NvRGy8Eo0w=;
 b=4boiRN5EskaJGCZJZwbA5uooIUSUUYV0YaFnXGMZULf6c7WkT3yDfe6rFKqghS7OijA9
 hJs3ENN8rCoFFjArc6DQSVIGYYPTnOAod6otGZF0Yifu2m0Ax5E7xxFf4cVmQuY6V+9f
 6T3o8KH+FfcpNzQ7xKwkvWNwhlJuq57xfPx91TRYpHx/9xL/YOxluszGLh7n+AOv6t74
 uG9Ae8Er1cWeTuH4QMRWi1/GmentqGJYi1WvjmDCLpGwKSh+39zsG7nB3xtOi7xyEweN
 hmsEjLYcLLzrGx0p6z+ZEu810DCpKJAHPJxp86spUx3eQySaag4uY4aeHszSSCTb6eQP hA== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by aserp2120.oracle.com with ESMTP id 2tq78q6vq0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Jul 2019 14:01:42 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x6JDmHrb189259;
 Fri, 19 Jul 2019 14:01:41 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3020.oracle.com with ESMTP id 2tsmcdm420-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 19 Jul 2019 14:01:41 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x6JE1eFI008791;
 Fri, 19 Jul 2019 14:01:40 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 19 Jul 2019 14:01:39 +0000
Date: Fri, 19 Jul 2019 17:01:33 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Ajay.Kathat@microchip.com
Subject: Re: [PATCH] staging: wilc1000: Merge memcpy + le32_to_cpus to
 get_unaligned_le32
Message-ID: <20190719140133.GH3111@kadam>
References: <20190719081005.4598-1-hslester96@gmail.com>
 <8c14743d-efe1-3e3a-0419-bde22f848751@microchip.com>
 <CANhBUQ3knUV44GiaB-xZMD8F6y8dcZQdznSmpk3E9ZKoakkBRQ@mail.gmail.com>
 <82dc6d2e-5f62-b2c7-296a-38f781628ec5@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <82dc6d2e-5f62-b2c7-296a-38f781628ec5@microchip.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9322
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=1
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907190158
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9322
 signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907190158
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

T24gRnJpLCBKdWwgMTksIDIwMTkgYXQgMTI6MDU6MDdQTSArMDAwMCwgQWpheS5LYXRoYXRAbWlj
cm9jaGlwLmNvbSB3cm90ZToKPiAKPiBPbiA3LzE5LzIwMTkgNToxNiBQTSwgQ2h1aG9uZyBZdWFu
IHdyb3RlOgo+ID4gCj4gPiA8QWpheS5LYXRoYXRAbWljcm9jaGlwLmNvbT4g5LqOMjAxOeW5tDfm
nIgxOeaXpeWRqOS6lCDkuIvljYg3OjM05YaZ6YGT77yaCj4gPj4KPiA+PiBPbiA3LzE5LzIwMTkg
MTo0MCBQTSwgQ2h1aG9uZyBZdWFuIHdyb3RlOgo+ID4+Pgo+ID4+PiBNZXJnZSB0aGUgY29tYm8g
dXNlIG9mIG1lbWNweSBhbmQgbGUzMl90b19jcHVzLgo+ID4+PiBVc2UgZ2V0X3VuYWxpZ25lZF9s
ZTMyIGluc3RlYWQuCj4gPj4+IFRoaXMgc2ltcGxpZmllcyB0aGUgY29kZS4KPiA+Pj4KPiA+Pj4g
U2lnbmVkLW9mZi1ieTogQ2h1aG9uZyBZdWFuIDxoc2xlc3Rlcjk2QGdtYWlsLmNvbT4KPiA+Pj4g
LS0tCj4gPj4+ICBkcml2ZXJzL3N0YWdpbmcvd2lsYzEwMDAvd2lsY193ZmlfY2Znb3BlcmF0aW9u
cy5jIHwgMyArLS0KPiA+Pj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxl
dGlvbnMoLSkKPiA+Pj4KPiA+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy93aWxjMTAw
MC93aWxjX3dmaV9jZmdvcGVyYXRpb25zLmMgYi9kcml2ZXJzL3N0YWdpbmcvd2lsYzEwMDAvd2ls
Y193ZmlfY2Znb3BlcmF0aW9ucy5jCj4gPj4+IGluZGV4IGQ3MmZkZDMzMzA1MC4uMTJmYjRhZGQw
NWVjIDEwMDY0NAo+ID4+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvd2lsYzEwMDAvd2lsY193Zmlf
Y2Znb3BlcmF0aW9ucy5jCj4gPj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy93aWxjMTAwMC93aWxj
X3dmaV9jZmdvcGVyYXRpb25zLmMKPiA+Pj4gQEAgLTEwMzgsOCArMTAzOCw3IEBAIHZvaWQgd2ls
Y193ZmlfcDJwX3J4KHN0cnVjdCB3aWxjX3ZpZiAqdmlmLCB1OCAqYnVmZiwgdTMyIHNpemUpCj4g
Pj4+ICAgICAgIHMzMiBmcmVxOwo+ID4+PiAgICAgICBfX2xlMTYgZmM7Cj4gPj4+Cj4gPj4+IC0g
ICAgIG1lbWNweSgmaGVhZGVyLCAoYnVmZiAtIEhPU1RfSERSX09GRlNFVCksIEhPU1RfSERSX09G
RlNFVCk7Cj4gPj4+IC0gICAgIGxlMzJfdG9fY3B1cygmaGVhZGVyKTsKPiA+Pj4gKyAgICAgaGVh
ZGVyID0gZ2V0X3VuYWxpZ25lZF9sZTMyKGJ1ZmYgLSBIT1NUX0hEUl9PRkZTRVQpOwo+ID4+PiAg
ICAgICBwa3Rfb2Zmc2V0ID0gR0VUX1BLVF9PRkZTRVQoaGVhZGVyKTsKPiA+Pj4KPiA+Pj4gICAg
ICAgaWYgKHBrdF9vZmZzZXQgJiBJU19NQU5BR01FTUVOVF9DQUxMQkFDSykgewo+ID4+Pgo+ID4+
Cj4gPj4gVGhhbmtzIGZvciBzZW5kaW5nIHRoZSBwYXRjaGVzLgo+ID4+Cj4gPj4gVGhlIGNvZGUg
Y2hhbmdlIGxvb2tzIG9rYXkgdG8gbWUuIEp1c3QgYSBtaW5vciBjb21tZW50LCBhdm9pZCB0aGUg
dXNlIG9mCj4gPj4gc2FtZSBzdWJqZWN0IGxpbmUgZm9yIGRpZmZlcmVudCBwYXRjaGVzLgo+ID4g
Cj4gPiBUaGVzZSB0d28gcGF0Y2hlcyBhcmUgaW4gdGhlIHNhbWUgc3Vic3lzdGVtIGFuZCBzb2x2
ZSB0aGUgc2FtZSBwcm9ibGVtLgo+ID4gSSBzcGxpdHRlZCB0aGVtIGludG8gdHdvIHBhdGNoZXMg
YnkgbWlzdGFrZSBzaW5jZSBJIGRpZCBub3Qgbm90aWNlIHRoZSBwcm9ibGVtcwo+ID4gaW4gdGhl
IHNlY29uZCBwYXRjaCB3aGVuIEkgc2VudCB0aGUgZmlyc3Qgb25lLgo+ID4gU2hvdWxkIEkgbWVy
Z2UgdGhlIHR3byBwYXRjaGVzIGFuZCByZXNlbmQ/Cj4gPiAKPiAKPiBZZXMsIHBsZWFzZSBnbyBh
aGVhZCwgbWVyZ2UgdGhlIHBhdGNoZXMgYW5kIHNlbmQgdGhlIHVwZGF0ZWQgdmVyc2lvbi4KPiAK
ClRoaXMgaXMgd3JvbmcgYWR2aWNlLiAgRG9uJ3QgbWVyZ2UgdGhlIHBhdGNoZXMgYmVjYXVzZSB0
aGV5IGFyZSBmb3IKZGlmZmVyZW50IGRyaXZlcnMuICBUaGUgb3JpZ2luYWwgc3ViamVjdHMgYXJl
IGZpbmUgYmVjYXVzZSB0aGUKc3Vic3lzdGVtcyBhcmUgZGlmZmVyZW50IHNvIHRoYXQncyBva2F5
LgoKcmVnYXJkcywKZGFuIGNhcnBlbnRlcgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
