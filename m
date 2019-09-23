Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D40DBBD49
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Sep 2019 22:49:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D78B820798;
	Mon, 23 Sep 2019 20:49:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id igalZYIhSGWC; Mon, 23 Sep 2019 20:49:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EACF9214EC;
	Mon, 23 Sep 2019 20:49:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6198D1BF2A3
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 20:49:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5E017862A0
 for <devel@linuxdriverproject.org>; Mon, 23 Sep 2019 20:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MkIkgY6AOcYq for <devel@linuxdriverproject.org>;
 Mon, 23 Sep 2019 20:49:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9E5B081D08
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 20:49:27 +0000 (UTC)
Received: from mail-pg1-f199.google.com ([209.85.215.199])
 by youngberry.canonical.com with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <connor.kuehl@canonical.com>) id 1iCVGv-0006eN-6r
 for devel@driverdev.osuosl.org; Mon, 23 Sep 2019 20:49:25 +0000
Received: by mail-pg1-f199.google.com with SMTP id o32so10003829pgm.18
 for <devel@driverdev.osuosl.org>; Mon, 23 Sep 2019 13:49:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zxNzTOgLv3xy8mspZc8sJjMKJWb5QYhOaWEZbCssyrY=;
 b=oj3K/QezwNBR5GQyalz8hykMbk8Qtt+mNZhwcwV+6uCf+iRT/i59b0wARVmbEWJnY6
 SWA3sN2KYa/31pk0KYzv7dSfhjlEMecKwHi2+RWVErhkr7zEHK8HKvhdLFmGMfZcXqCG
 CwHKfS64Lj4LPCqW/SnkeyAZh02PnU/VMzj/4OFRT7W4KxWzgM6DylKGKArUWtIpKodJ
 jKKPAxqUSkDDFQT5R+hx9YIt5nnz1cVLd6UtLRX9Mp4+TWaHWAuV8JEZlNd206YCoBdq
 hXygIUk9yhh6QT5BxYyxAKPCggRom5n4aH/FKWr8P1d3RH4HH3a8O84tuHe4CGv3ZiSp
 9Lnw==
X-Gm-Message-State: APjAAAWnB7xtaZN3JJhoZyUWXNIRslhKnFFXK8kwIn2xDlD7vYzyMtHw
 4/iukXwRXzxLe970TgjvYZbpS+M48AIOv07gZnkQBmkx8u9NeWq9ILIeBfVe/xbdI+ZKmYM4L9P
 hEFioaBdXTn0VGKh/hPxZVBDd3K3O2QEgfUJGEXc=
X-Received: by 2002:a17:902:690c:: with SMTP id
 j12mr1732977plk.83.1569271763804; 
 Mon, 23 Sep 2019 13:49:23 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwli3eb22E3YEdIGn5DbGXJLCk8NNBHFV4LNYMsOLq2A+mEoRbs+jBfvKS9LRTbrNZ3vP0cuA==
X-Received: by 2002:a17:902:690c:: with SMTP id
 j12mr1732961plk.83.1569271763608; 
 Mon, 23 Sep 2019 13:49:23 -0700 (PDT)
Received: from [192.168.0.179] (c-71-63-131-226.hsd1.or.comcast.net.
 [71.63.131.226])
 by smtp.gmail.com with ESMTPSA id w69sm15338576pgd.91.2019.09.23.13.49.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Sep 2019 13:49:22 -0700 (PDT)
Subject: Re: [PATCH] staging: rtl8188eu: remove dead code in do-while
 conditional step
To: Larry Finger <Larry.Finger@lwfinger.net>, gregkh@linuxfoundation.org,
 straube.linux@gmail.com, devel@driverdev.osuosl.org
References: <20190923194806.25347-1-connor.kuehl@canonical.com>
 <c2ce3fb0-6407-982a-a3f2-172cef17f2a6@lwfinger.net>
From: Connor Kuehl <connor.kuehl@canonical.com>
Message-ID: <25c92ca9-0025-503e-3468-0df5de8ec2c9@canonical.com>
Date: Mon, 23 Sep 2019 13:49:21 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <c2ce3fb0-6407-982a-a3f2-172cef17f2a6@lwfinger.net>
Content-Language: en-US
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gOS8yMy8xOSAxOjM4IFBNLCBMYXJyeSBGaW5nZXIgd3JvdGU6Cj4gT24gOS8yMy8xOSAyOjQ4
IFBNLCBDb25ub3IgS3VlaGwgd3JvdGU6Cj4+IFRoZSBsb2NhbCB2YXJpYWJsZSAnYmNtZF9kb3du
JyBpcyBhbHdheXMgc2V0IHRvIHRydWUgYWxtb3N0IGltbWVkaWF0ZWx5Cj4+IGJlZm9yZSB0aGUg
ZG8td2hpbGUncyBjb25kaXRpb24gaXMgY2hlY2tlZC4gQXMgYSByZXN1bHQsICFiY21kX2Rvd24K
Pj4gZXZhbHVhdGVzIHRvIGZhbHNlIHdoaWNoIHNob3J0IGNpcmN1aXRzIHRoZSBsb2dpY2FsIEFO
RCBvcGVyYXRvciBtZWFuaW5nCj4+IHRoYXQgdGhlIHNlY29uZCBvcGVyYW5kIGlzIG5ldmVyIHJl
YWNoZWQgYW5kIGlzIHRoZXJlZm9yZSBkZWFkIGNvZGUuCj4+Cj4+IEFkZHJlc3Nlcy1Db3Zlcml0
eTogKCJMb2dpY2FsbHkgZGVhZCBjb2RlIikKPj4KPj4gU2lnbmVkLW9mZi1ieTogQ29ubm9yIEt1
ZWhsIDxjb25ub3Iua3VlaGxAY2Fub25pY2FsLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvc3Rh
Z2luZy9ydGw4MTg4ZXUvaGFsL3J0bDgxODhlX2NtZC5jIHwgMyArLS0KPj4gwqAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9oYWwvcnRsODE4OGVfY21kLmMgCj4+IGIvZHJpdmVy
cy9zdGFnaW5nL3J0bDgxODhldS9oYWwvcnRsODE4OGVfY21kLmMKPj4gaW5kZXggNDczNTJmMjEw
YzBiLi5hNGIzMTc5MzdiMjMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4MTg4
ZXUvaGFsL3J0bDgxODhlX2NtZC5jCj4+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9ydGw4MTg4ZXUv
aGFsL3J0bDgxODhlX2NtZC5jCj4+IEBAIC00OCw3ICs0OCw2IEBAIHN0YXRpYyB1OCBfaXNfZndf
cmVhZF9jbWRfZG93bihzdHJ1Y3QgYWRhcHRlciAKPj4gKmFkYXB0LCB1OCBtc2dib3hfbnVtKQo+
PiDCoCBzdGF0aWMgczMyIEZpbGxIMkNDbWRfODhFKHN0cnVjdCBhZGFwdGVyICphZGFwdCwgdTgg
RWxlbWVudElELCB1MzIgCj4+IENtZExlbiwgdTggKnBDbWRCdWZmZXIpCj4+IMKgIHsKPj4gwqDC
oMKgwqDCoCB1OCBiY21kX2Rvd24gPSBmYWxzZTsKPj4gLcKgwqDCoCBzMzIgcmV0cnlfY250cyA9
IDEwMDsKPj4gwqDCoMKgwqDCoCB1OCBoMmNfYm94X251bTsKPj4gwqDCoMKgwqDCoCB1MzIgbXNn
Ym94X2FkZHI7Cj4+IMKgwqDCoMKgwqAgdTMyIG1zZ2JveF9leF9hZGRyOwo+PiBAQCAtMTAzLDcg
KzEwMiw3IEBAIHN0YXRpYyBzMzIgRmlsbEgyQ0NtZF84OEUoc3RydWN0IGFkYXB0ZXIgKmFkYXB0
LCAKPj4gdTggRWxlbWVudElELCB1MzIgQ21kTGVuLCB1OCAqcAo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgYWRhcHQtPkhhbERhdGEtPkxhc3RITUVCb3hOdW0gPQo+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAoaDJjX2JveF9udW0rMSkgJSBSVEw4OEVfTUFYX0gyQ19CT1hfTlVNUzsKPj4gLcKg
wqDCoCB9IHdoaWxlICgoIWJjbWRfZG93bikgJiYgKHJldHJ5X2NudHMtLSkpOwo+PiArwqDCoMKg
IH0gd2hpbGUgKCFiY21kX2Rvd24pOwo+PiDCoMKgwqDCoMKgIHJldCA9IF9TVUNDRVNTOwo+IAo+
IFRoaXMgcGF0Y2ggaXMgY29ycmVjdDsgaG93ZXZlciwgdGhlIGRvLi53aGlsZSBsb29wIHdpbGwg
YWx3YXlzIGJlIAo+IGV4ZWN1dGVkIG9uY2UsIHRodXMgeW91IGNvdWxkIHJlbW92ZSB0aGUgbG9v
cCBhbmQgdGhlIGxvb3AgdmFyaWFibGUgCj4gYmNtZF9kb3duLgoKQWgsIHllcyEgVGhhdCBtYWtl
cyBzZW5zZSwgZ29vZCBjYXRjaC4KCj4gCj4gQGdyZWc6IElmIHlvdSB3b3VsZCBwcmVmZXIgYSB0
d28tc3RlcCBwcm9jZXNzLCB0aGVuIHRoaXMgb25lIGlzIE9LLgoKSSdsbCBkbyB3aGljaGV2ZXIg
aXMgcHJlZmVycmVkLiBJJ20gaGFwcHkgdG8gTkFDSyB0aGlzIGFuZCBzZW5kIGEgdjIgCndpdGgg
dGhlIGRlYWQgY29kZSBhbmQgbG9vcCByZW1vdmVkIG9yIEkgY2FuIHNlbmQgYSBzZXBhcmF0ZSBw
YXRjaCBiYXNlZCAKb24gdGhpcyBvbmUgdG8gcmVtb3ZlIHRoZSBsb29wLgoKVGhhbmsgeW91LAoK
Q29ubm9yCgo+IAo+IExhcnJ5Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0
Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0
aW5mby9kcml2ZXJkZXYtZGV2ZWwK
