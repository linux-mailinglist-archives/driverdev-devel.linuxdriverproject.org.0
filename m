Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF222545F7
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Aug 2020 15:31:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1E60F87C0A;
	Thu, 27 Aug 2020 13:31:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qxA2F1tUH3dA; Thu, 27 Aug 2020 13:31:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C0A8F87BFF;
	Thu, 27 Aug 2020 13:31:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE10A1BF865
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 13:31:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BABC78636D
 for <devel@linuxdriverproject.org>; Thu, 27 Aug 2020 13:31:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QJUgSnU63G0L for <devel@linuxdriverproject.org>;
 Thu, 27 Aug 2020 13:31:29 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A18F8848AA
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 13:31:29 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id 92so4481947qtb.6
 for <devel@driverdev.osuosl.org>; Thu, 27 Aug 2020 06:31:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=lDczrlJd3qpi62PuNHOBqp+bVIuJaZ3CIq+6qbkhanw=;
 b=RNiGEKW35DYb/JfM8HflEt7mDoN5TTPevUjWrFEMiWnB7Nb4c3aWKy7OU/kyHLadcm
 xBs4dPO9yvjR28pNvlkIVvz1z48FwzX+Q7XHHN6Hc6GYQb3xJXyaCtC7yoF6eGgJlzB5
 q3NWsx/2aKVfGGvJjPYX2AMGRKQLIZVqtIxk0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=lDczrlJd3qpi62PuNHOBqp+bVIuJaZ3CIq+6qbkhanw=;
 b=IHGO9ATNVSHAyquXtSkf8Oq+m92yvUsoQMZGspQdCrOQfEnfzfS3+4c+uwKmkaMSVW
 EfLEtZtIzolzt9vsnB0IkiVtyzFE/rE9KOfEpOHQf/V/HhV6QmlIYj8THzb4yvOUr9xm
 qKElMlMZyD9pAyVIo+VWTSF5D5khM0lMPwAugct8lXnlqzmUci4OHKoaEoPKnnIM+Fmn
 mar1teSMVFRGh31hBtDf18luFIy4uFX3bKP9Uh9Q/MXKUpGx5viQhvoW1tD9JoB8iR/3
 oCVVj507NgtGNWVRLdk3LB0Jp02waHH4zq4KCNlSa0NKRapaz0h6HAmXDgV+EBD0gAzr
 B1mw==
X-Gm-Message-State: AOAM532cnyKXl4dOpYAqBsqpHstvXZnqF3xDGe+nJ7j0IKI/ZyrjksBq
 fZBTWdYbcr04MUw6YUOk3kE9/A==
X-Google-Smtp-Source: ABdhPJz94NCDJe1Y3TCUAT1fErYJ7r4fw5orM7dXc6gbtDSEIf2lbXNnjENlynBt6QlAePZlj2K0AQ==
X-Received: by 2002:ac8:4f44:: with SMTP id i4mr6328121qtw.189.1598535088575; 
 Thu, 27 Aug 2020 06:31:28 -0700 (PDT)
Received: from [192.168.1.168] (pool-74-109-246-95.pitbpa.fios.verizon.net.
 [74.109.246.95])
 by smtp.gmail.com with ESMTPSA id i7sm1774133qkb.131.2020.08.27.06.31.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Aug 2020 06:31:28 -0700 (PDT)
Subject: Re: [PATCH] staging: ion: remove from the tree
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, sumit.semwal@linaro.org, 
 john.stultz@linaro.org
References: <20200827123627.538189-1-gregkh@linuxfoundation.org>
From: Laura Abbott <laura@labbott.name>
Message-ID: <3d8de519-65b3-123b-8ace-e820982884e0@labbott.name>
Date: Thu, 27 Aug 2020 09:31:27 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200827123627.538189-1-gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linaro-mm-sig@lists.linaro.org,
 Shuah Khan <shuah@kernel.org>, Todd Kjos <tkjos@android.com>,
 Martijn Coenen <maco@android.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Suren Baghdasaryan <surenb@google.com>,
 Christoph Hellwig <hch@infradead.org>, Joel Fernandes <joel@joelfernandes.org>,
 =?UTF-8?Q?Arve_Hj=c3=b8nnev=c3=a5g?= <arve@android.com>,
 Hridya Valsaraju <hridya@google.com>, kernel-team@android.com,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Christian Brauner <christian@brauner.io>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gOC8yNy8yMCA4OjM2IEFNLCBHcmVnIEtyb2FoLUhhcnRtYW4gd3JvdGU6Cj4gVGhlIElPTiBh
bmRyb2lkIGNvZGUgaGFzIGxvbmcgYmVlbiBtYXJrZWQgdG8gYmUgcmVtb3ZlZCwgbm93IHRoYXQg
d2UKPiBkbWEtYnVmIHN1cHBvcnQgbWVyZ2VkIGludG8gdGhlIHJlYWwgcGFydCBvZiB0aGUga2Vy
bmVsLgo+IAo+IEl0IHdhcyB0aG91Z2h0IHRoYXQgd2UgY291bGQgd2FpdCB0byByZW1vdmUgdGhl
IGlvbiBrZXJuZWwgYXQgYSBsYXRlcgo+IHRpbWUsIGJ1dCBhcyB0aGUgb3V0LW9mLXRyZWUgQW5k
cm9pZCBmb3JrIG9mIHRoZSBpb24gY29kZSBoYXMgZGl2ZXJnZWQKPiBxdWl0ZSBhIGJpdCwgYW5k
IGFueSBBbmRyb2lkIGRldmljZSB1c2luZyB0aGUgaW9uIGludGVyZmFjZSB1c2VzIHRoYXQKPiBm
b3JrZWQgdmVyc2lvbiBhbmQgbm90IHRoaXMgaW4tdHJlZSB2ZXJzaW9uLCB0aGUgaW4tdHJlZSBj
b3B5IG9mIHRoZQo+IGNvZGUgaXMgYWJhbmRvbmRlZCBhbmQgbm90IHVzZWQgYnkgYW55b25lLgo+
IAo+IENvbWJpbmUgdGhpcyBhYmFuZG9uZWQgY29kZWJhc2Ugd2l0aCB0aGUgbmVlZCB0byBtYWtl
IGNoYW5nZXMgdG8gaXQgaW4KPiBvcmRlciB0byBrZWVwIHRoZSBrZXJuZWwgYnVpbGRpbmcgcHJv
cGVybHksIHdoaWNoIHRoZW4gY2F1c2VzIG1lcmdlCj4gaXNzdWVzIHdoZW4gbWVyZ2luZyB0aG9z
ZSBjaGFuZ2VzIGludG8gdGhlIG91dC1vZi10cmVlIEFuZHJvaWQgY29kZSwgYW5kCj4geW91IGVu
ZCB1cCB3aXRoIHR3byBkaWZmZXJlbnQgZ3JvdXBzIG9mIHBlb3BsZSAodGhlIGluLWtlcm5lbC10
cmVlCj4gZGV2ZWxvcGVycywgYW5kIHRoZSBBbmRyb2lkIGtlcm5lbCBkZXZlbG9wZXJzKSB3aG8g
YXJlIGJvdGggYW5ub3llZCBhdAo+IHRoZSBjdXJyZW50IHNpdHVhdGlvbi4gIEJlY2F1c2Ugb2Yg
dGhpcyBwcm9ibGVtLCBqdXN0IGRyb3AgdGhlIGluLWtlcm5lbAo+IGNvcHkgb2YgdGhlIGlvbiBj
b2RlIG5vdywgYXMgaXQncyBub3QgdXNlZCwgYW5kIGlzIG9ubHkgY2F1c2luZyBwcm9ibGVtcwo+
IGZvciBldmVyeW9uZSBpbnZvbHZlZC4KPiAKPiBDYzogIkFydmUgSGrDuG5uZXbDpWciIDxhcnZl
QGFuZHJvaWQuY29tPgo+IENjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4KPiBDYzogQ2hyaXN0aWFuIEJyYXVuZXIgPGNocmlzdGlhbkBicmF1bmVyLmlvPgo+
IENjOiBDaHJpc3RvcGggSGVsbHdpZyA8aGNoQGluZnJhZGVhZC5vcmc+Cj4gQ2M6IEhyaWR5YSBW
YWxzYXJhanUgPGhyaWR5YUBnb29nbGUuY29tPgo+IENjOiBKb2VsIEZlcm5hbmRlcyA8am9lbEBq
b2VsZmVybmFuZGVzLm9yZz4KPiBDYzogSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFyby5v
cmc+Cj4gQ2M6IExhdXJhIEFiYm90dCA8bGF1cmFAbGFiYm90dC5uYW1lPgo+IENjOiBNYXJ0aWpu
IENvZW5lbiA8bWFjb0BhbmRyb2lkLmNvbT4KPiBDYzogU2h1YWggS2hhbiA8c2h1YWhAa2VybmVs
Lm9yZz4KPiBDYzogU3VtaXQgU2Vtd2FsIDxzdW1pdC5zZW13YWxAbGluYXJvLm9yZz4KPiBDYzog
U3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJlbmJAZ29vZ2xlLmNvbT4KPiBDYzogVG9kZCBLam9zIDx0
a2pvc0BhbmRyb2lkLmNvbT4KPiBDYzogZGV2ZWxAZHJpdmVyZGV2Lm9zdW9zbC5vcmcKPiBDYzog
ZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKPiBTaWduZWQtb2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBs
aW51eGZvdW5kYXRpb24ub3JnPgoKV2UgZGlzY3Vzc2VkIHRoaXMgYXQgdGhlIEFuZHJvaWQgTUMg
b24gTW9uZGF5IGFuZCB0aGUgcGxhbiB3YXMgdG8KcmVtb3ZlIGl0IGFmdGVyIHRoZSBuZXh0IExU
UyByZWxlYXNlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8v
ZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJk
ZXYtZGV2ZWwK
