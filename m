Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2314D21DF8A
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 20:24:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 2850A26636;
	Mon, 13 Jul 2020 18:24:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kztJiJEo+6C7; Mon, 13 Jul 2020 18:24:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BE9382535C;
	Mon, 13 Jul 2020 18:24:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 126A51BF31B
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 18:24:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0C01426284
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 18:24:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Spo2itYVUhxY for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 18:24:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 563E92535C
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 18:24:04 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id h19so19095668ljg.13
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 11:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=HxoMMP+GmR1MWhGQitmQoUdOlu7DI+nmxZW7vTrxTMc=;
 b=YWLazNttpXz7U6yf7fRrPaMpAVJSnGSy3J4OKIjP+wbGlwW8/bxlvRRJMw9uTNyLgz
 44jsFV0dscbDiFmfO9Qg9C+CwM0denJs9ln4PoSarH5g3NUupUtouVYOlvKI0Y6IyoRM
 XeoFH7x9TcixsKoqDl5c9lcm3xahj31hTNXiSauikd7S9e5AhB5giFcNGblxvLPWRT5M
 /jfDeT66tRA5nivfQPr+CF8QUP35MSgLvIMpfJnHTzyA6fwjh26V0RgECmldn3C9WMTc
 FMaPQ+LwksyO+fpmZBvmJ8Uavg0DDuuEuwJ52ibbAfhcuJs7f5XYxOCk6mOa6jAPRD6R
 xqRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HxoMMP+GmR1MWhGQitmQoUdOlu7DI+nmxZW7vTrxTMc=;
 b=SN7e5pkjSUR0dTHxJF+kUktjuIVuN+6WOEioEFI1SNp9OmoNcDpIzfkDqJ6ZqlXnK2
 Zu8jsB233gGTr09hnxfsRKdj9dXs3ASyldcIvWROjIeBD00k9CYea3cQU+SRxkeaP8NF
 M+/jDxTk+9S0y8kcUQo4CWafS6Mb4Cfgrq4qPDWZMn3i0h6EUnYb62mjsmaq6894i+BS
 b5p6mETQzCFJZ1yBGNzM7AO3K9e/fpine8E2+ICaT4hKWcbaMsUIP8D2Mb/KLFDcXSb7
 RUF+jKHV2qP7cneoQ6ls/Gwkx+ryvFlViAQlaMxC6H5/sapZPAZUbq2aWSCdkSU8ky1E
 ZQbQ==
X-Gm-Message-State: AOAM531GbDqfqdYRp2XUsG2NewgpoK+B99hQrnwHanxPJGg6/zTZ/mme
 ZJEZNjOIS8mier/TKtsi+yx5MMMH
X-Google-Smtp-Source: ABdhPJx8FToCxY+SLBzkQJdlkSftBwCRV7YPXcRy9mW6kD2inBLKAN8BTmRzXkZwl7qJHqaNeImZUg==
X-Received: by 2002:a2e:8794:: with SMTP id n20mr429972lji.359.1594664642274; 
 Mon, 13 Jul 2020 11:24:02 -0700 (PDT)
Received: from [192.168.0.160] (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id c14sm4773868lfb.69.2020.07.13.11.24.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jul 2020 11:24:01 -0700 (PDT)
Subject: Re: [PATCH] staging: r8188eu: remove unused members of struct xmit_buf
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20200712123821.553420-1-insafonov@gmail.com>
 <20200713131607.GR2549@kadam> <20200713142305.GV2549@kadam>
From: Ivan Safonov <insafonov@gmail.com>
Message-ID: <5fdeb963-2729-dbc5-3fba-85998e28d8d5@gmail.com>
Date: Mon, 13 Jul 2020 21:28:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200713142305.GV2549@kadam>
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, Nishka Dasgupta <nishkadg.linux@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Soumyajit Deb <debsoumyajit100@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gNy8xMy8yMCA1OjIzIFBNLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+IE9uIE1vbiwgSnVsIDEz
LCAyMDIwIGF0IDA0OjE2OjA3UE0gKzAzMDAsIERhbiBDYXJwZW50ZXIgd3JvdGU6Cj4+IE9uIFN1
biwgSnVsIDEyLCAyMDIwIGF0IDAzOjM4OjIxUE0gKzAzMDAsIEl2YW4gU2Fmb25vdiB3cm90ZToK
Pj4+IFJlbW92ZSB1bnVzZWQgbWVtYmVycyBvZiBzdHJ1Y3QgeG1pdF9idWY6IGFsbG9jX3N6LCBm
Zl9od2FkZHIsCj4+PiBkbWFfdHJhbnNmZXJfYWRkciwgYnBlbmRpbmcgYW5kIGxhc3QuCj4+Pgo+
Pj4gU2lnbmVkLW9mZi1ieTogSXZhbiBTYWZvbm92IDxpbnNhZm9ub3ZAZ21haWwuY29tPgo+Pj4g
LS0tCj4+PiAgIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTg4ZXUvaW5jbHVkZS9ydHdfeG1pdC5oICB8
IDUgLS0tLS0KPj4+ICAgZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9vc19kZXAveG1pdF9saW51
eC5jIHwgMSAtCj4+PiAgIDIgZmlsZXMgY2hhbmdlZCwgNiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9pbmNsdWRlL3J0d194bWl0Lmgg
Yi9kcml2ZXJzL3N0YWdpbmcvcnRsODE4OGV1L2luY2x1ZGUvcnR3X3htaXQuaAo+Pj4gaW5kZXgg
MTJkMTZlOTgxNzZhLi4zYzAzOTg3YzgxYTEgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL3N0YWdp
bmcvcnRsODE4OGV1L2luY2x1ZGUvcnR3X3htaXQuaAo+Pj4gKysrIGIvZHJpdmVycy9zdGFnaW5n
L3J0bDgxODhldS9pbmNsdWRlL3J0d194bWl0LmgKPj4+IEBAIC0xOTMsMTQgKzE5Myw5IEBAIHN0
cnVjdCB4bWl0X2J1ZiB7Cj4+PiAgIAl2b2lkICpwcml2X2RhdGE7Cj4+PiAgIAl1MTYgZXh0X3Rh
ZzsgLyogIDA6IE5vcm1hbCB4bWl0YnVmLCAxOiBleHRlbnNpb24geG1pdGJ1Zi4gKi8KPj4+ICAg
CXUxNiBmbGFnczsKPj4+IC0JdTMyIGFsbG9jX3N6Owo+Pj4gICAJdTMyICBsZW47Cj4+PiAgIAlz
dHJ1Y3Qgc3VibWl0X2N0eCAqc2N0eDsKPj4+IC0JdTMyCWZmX2h3YWRkcjsKPj4+ICAgCXN0cnVj
dCB1cmIgKnB4bWl0X3VyYls4XTsKPj4+IC0JZG1hX2FkZHJfdCBkbWFfdHJhbnNmZXJfYWRkcjsJ
LyogKGluKSBkbWEgYWRkciBmb3IgdHJhbnNmZXJfYnVmZmVyICovCj4+PiAtCXU4IGJwZW5kaW5n
WzhdOwo+Pj4gLQlpbnQgbGFzdFs4XTsKPj4+ICAgfTsKPj4+ICAgCj4+PiAgIHN0cnVjdCB4bWl0
X2ZyYW1lIHsKPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvcnRsODE4OGV1L29zX2Rl
cC94bWl0X2xpbnV4LmMgYi9kcml2ZXJzL3N0YWdpbmcvcnRsODE4OGV1L29zX2RlcC94bWl0X2xp
bnV4LmMKPj4+IGluZGV4IDAxN2UxZDYyODQ2MS4uNjFjZWQxMTYwOTUxIDEwMDY0NAo+Pj4gLS0t
IGEvZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9vc19kZXAveG1pdF9saW51eC5jCj4+PiArKysg
Yi9kcml2ZXJzL3N0YWdpbmcvcnRsODE4OGV1L29zX2RlcC94bWl0X2xpbnV4LmMKPj4+IEBAIC0y
NCw3ICsyNCw2IEBAIGludCBydHdfb3NfeG1pdF9yZXNvdXJjZV9hbGxvYyhzdHJ1Y3QgYWRhcHRl
ciAqcGFkYXB0ZXIsCj4+PiAgIAkJcmV0dXJuIF9GQUlMOwo+Pj4gICAKPj4+ICAgCXB4bWl0YnVm
LT5wYnVmID0gUFRSX0FMSUdOKHB4bWl0YnVmLT5wYWxsb2NhdGVkX2J1ZiwgWE1JVEJVRl9BTElH
Tl9TWik7Cj4+Cj4+IE5vdCByZWxhdGVkIHRvIHRoaXMgcGF0Y2ggYnV0IGttYWxsb2MgYWx3YXlz
IHJldHVybnMgZGF0YSB3aGljaCBpcyBhdAo+PiBsZWFzdCBBUkNIX0tNQUxMT0NfTUlOQUxJR04g
YWxpZ25lZCB3aGljaCBpcyBuZXZlciBsZXNzIHRoYW4KPj4gWE1JVEJVRl9BTElHTl9TWiAoNCkg
c28gdGhpcyBpcyBhIG5vLW9wLgoKNC1ieXRlIGFsaWdubWVudCBmb3IgOC1ieXRlIHBvaW50ZXIg
KGZvciBleGFtcGxlIHZvaWQgKnByaXZfZGF0YSkgb24gCjY0LWJpdCBhcmNoIGlzIGFuIF9lcnJv
cl8uIEl04oCZcyBnb29kIHRoYXQga21hbGxvYyAoYW5kIHZtYWxsb2MpIGlzIAphbHJlYWR5IGFs
aWduZWQgdG8gOCBieXRlcy4KCj4gCj4gVGhlIGFsaWdubWVudCBpbiB0aGUgZHJpdmVyIGlzIHBy
ZXR0eSBjcmF6eSBiZWNhdXNlIGl0J3MgYWxsIHVubmVjZXNzYXJ5Cj4gYW5kIHNvIGNvbXBsaWNh
dGVkLiAgRXZlcnkgYWxsb2NhdGlvbiBpcyA0IGJ5dGVzIGV4dHJhIHNvIHdlIGNhbiBhbGlnbgo+
IGl0IGxhdGVyLgo+IAo+IEFsc28gZXZlcnkgYnVmZmVyIGlzIGNhbGxlZCAicGJ1ZiIgd2hpY2gg
c3RhbmRzIGZvciBwb2ludGVyIHRvIGJ1ZmZlci4KPiAicGFsbG9jYXRlZF9idWYiIGlzIG5vdCBy
ZWFsbHkgdXNlZnVsIGVpdGhlci4KPiAKPiBJIHRyaWVkIHRvIGxvb2sgYXQgdGhpcyB0byBzZWUg
aWYgd2UgY291bGQgY2hhbmdlIHRoZSBhbGlnbm1lbnQsIGFuZAo+IGl0J3MgY29tcGxpY2F0ZWQg
YmVjYXVzZSBvZiB0aGUgbmFtaW5nIGFuZCB0aGUgYWxpZ25tZW50Lgo+IAo+IHJlZ2FyZHMsCj4g
ZGFuIGNhcnBlbnRlcgo+IAoKSSBoYXZlIGFscmVhZHkgZml4ZWQgNCBwbGFjZXMgd2l0aCB1bm5l
Y2Vzc2FyeSBhbGlnbm1lbnQsIGJ1dCwgYWxhcywgCnRoZXJlIGlzIG5vIGdyZWF0IGRlc2lyZSB0
byB0ZXN0IHRoZW0gb24gcmVhbCBoYXJkd2FyZS4KCkl2YW4uCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
