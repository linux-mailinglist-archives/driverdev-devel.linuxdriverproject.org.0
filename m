Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE5321E1F1
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Jul 2020 23:15:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7288E8A125;
	Mon, 13 Jul 2020 21:15:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Loz3e9OU+eR0; Mon, 13 Jul 2020 21:15:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 493528A110;
	Mon, 13 Jul 2020 21:15:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BEB9C1BF339
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 21:15:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B684E887A0
 for <devel@linuxdriverproject.org>; Mon, 13 Jul 2020 21:15:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NKbkUCIKWpA7 for <devel@linuxdriverproject.org>;
 Mon, 13 Jul 2020 21:15:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oo1-f66.google.com (mail-oo1-f66.google.com
 [209.85.161.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D172089E96
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 21:15:45 +0000 (UTC)
Received: by mail-oo1-f66.google.com with SMTP id z127so2705454ooa.3
 for <devel@driverdev.osuosl.org>; Mon, 13 Jul 2020 14:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=qjuZJNT2nmHWODfcbipNILNPsrHac01Xb1NkyxlZsYo=;
 b=THgzZSecpJNXVHihMziM8zXe9G4OVd57nNd/IYrlmkoCMEKtq1phQFDbY3R8Pghqow
 idlzkoH+hU59tOaGmgdJ2tfduM1cTqHe2305ymOrU5HDxps3GsDXjg1ynxyRGlkjTJM/
 rwM/9Y2LmB5HAOwMbf/sanxUEz3sa8O7ae7B5JTNKMqfbZ6+38RSBv3uK7YKpKmzdgjM
 iZeDhR9EraH8ZR7R60VSb0tVBRX7ExPS1gJWwVf8WFVHj5PaqLQ5KbHzCv3IZ3Nkz3Wi
 9I3XX3z1xNeXfUGNK2I3XtAgG6K28dgXiJLvTK2xHg81kCFnFJRQHL/r59iqZD5tEKBK
 WgEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qjuZJNT2nmHWODfcbipNILNPsrHac01Xb1NkyxlZsYo=;
 b=YD6/vuuQ01pl/zk/w73b9IiftGnNkh3KnITGBgMGULlDWR/JeVLJd0iDs0ZOqGtLAS
 idjpSBh+dxriolkXFmpKN60bVvKPM5ZNBkwVzoJ47+1QgXYdK3qiss6CZ/5+LabFRODH
 k6IYu5WSZAkX1HiL9s7ZJmj7TokFJMJ+W8Av2rVHWI50bdKFjFvpXpC03G3MgAzBZPGc
 XQXiHoB3poFOL8UE2n1jHcXAplhgDBXknD9fhvhWxtgF75ykzkZ6sBv0Pvlpniq5vn8t
 D6LCWmq+XhgR/FKf/e/w75kKBmGDIqTfesOHoDWW9GELwSTJQorvUqoG1jb3CNqQBjZs
 OYrA==
X-Gm-Message-State: AOAM533sRSLW2XEHASB+dePM/mHXp0tqF2SH6PiliAANwWsvqnw4m+vF
 M8DplACor8U41v/EXLd0wZk=
X-Google-Smtp-Source: ABdhPJzIfN1AboVENY11PTwSGMDeDkiICqolIWkLTLNFk3ZVzw9gpWcs4af337SaL2dnxAyoWl24cg==
X-Received: by 2002:a4a:7459:: with SMTP id t25mr1731283ooe.25.1594674944498; 
 Mon, 13 Jul 2020 14:15:44 -0700 (PDT)
Received: from localhost.localdomain (cpe-24-31-245-230.kc.res.rr.com.
 [24.31.245.230])
 by smtp.gmail.com with ESMTPSA id c206sm3321930oob.22.2020.07.13.14.15.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Jul 2020 14:15:43 -0700 (PDT)
Subject: Re: [PATCH] staging: r8188eu: remove unused members of struct xmit_buf
To: Ivan Safonov <insafonov@gmail.com>,
 Dan Carpenter <dan.carpenter@oracle.com>
References: <20200712123821.553420-1-insafonov@gmail.com>
 <20200713131607.GR2549@kadam> <20200713142305.GV2549@kadam>
 <5fdeb963-2729-dbc5-3fba-85998e28d8d5@gmail.com>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <1fa0b2fe-4320-f1e0-c3ca-6a3b4b5fea18@lwfinger.net>
Date: Mon, 13 Jul 2020 16:15:42 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5fdeb963-2729-dbc5-3fba-85998e28d8d5@gmail.com>
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
 Soumyajit Deb <debsoumyajit100@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gNy8xMy8yMCAxOjI4IFBNLCBJdmFuIFNhZm9ub3Ygd3JvdGU6Cj4gT24gNy8xMy8yMCA1OjIz
IFBNLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+PiBPbiBNb24sIEp1bCAxMywgMjAyMCBhdCAwNDox
NjowN1BNICswMzAwLCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+Pj4gT24gU3VuLCBKdWwgMTIsIDIw
MjAgYXQgMDM6Mzg6MjFQTSArMDMwMCwgSXZhbiBTYWZvbm92IHdyb3RlOgo+Pj4+IFJlbW92ZSB1
bnVzZWQgbWVtYmVycyBvZiBzdHJ1Y3QgeG1pdF9idWY6IGFsbG9jX3N6LCBmZl9od2FkZHIsCj4+
Pj4gZG1hX3RyYW5zZmVyX2FkZHIsIGJwZW5kaW5nIGFuZCBsYXN0Lgo+Pj4+Cj4+Pj4gU2lnbmVk
LW9mZi1ieTogSXZhbiBTYWZvbm92IDxpbnNhZm9ub3ZAZ21haWwuY29tPgo+Pj4+IC0tLQo+Pj4+
IMKgIGRyaXZlcnMvc3RhZ2luZy9ydGw4MTg4ZXUvaW5jbHVkZS9ydHdfeG1pdC5owqAgfCA1IC0t
LS0tCj4+Pj4gwqAgZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9vc19kZXAveG1pdF9saW51eC5j
IHwgMSAtCj4+Pj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCA2IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9ydGw4MTg4ZXUvaW5jbHVkZS9ydHdfeG1pdC5o
IAo+Pj4+IGIvZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9pbmNsdWRlL3J0d194bWl0LmgKPj4+
PiBpbmRleCAxMmQxNmU5ODE3NmEuLjNjMDM5ODdjODFhMSAxMDA2NDQKPj4+PiAtLS0gYS9kcml2
ZXJzL3N0YWdpbmcvcnRsODE4OGV1L2luY2x1ZGUvcnR3X3htaXQuaAo+Pj4+ICsrKyBiL2RyaXZl
cnMvc3RhZ2luZy9ydGw4MTg4ZXUvaW5jbHVkZS9ydHdfeG1pdC5oCj4+Pj4gQEAgLTE5MywxNCAr
MTkzLDkgQEAgc3RydWN0IHhtaXRfYnVmIHsKPj4+PiDCoMKgwqDCoMKgIHZvaWQgKnByaXZfZGF0
YTsKPj4+PiDCoMKgwqDCoMKgIHUxNiBleHRfdGFnOyAvKsKgIDA6IE5vcm1hbCB4bWl0YnVmLCAx
OiBleHRlbnNpb24geG1pdGJ1Zi4gKi8KPj4+PiDCoMKgwqDCoMKgIHUxNiBmbGFnczsKPj4+PiAt
wqDCoMKgIHUzMiBhbGxvY19zejsKPj4+PiDCoMKgwqDCoMKgIHUzMsKgIGxlbjsKPj4+PiDCoMKg
wqDCoMKgIHN0cnVjdCBzdWJtaXRfY3R4ICpzY3R4Owo+Pj4+IC3CoMKgwqAgdTMywqDCoMKgIGZm
X2h3YWRkcjsKPj4+PiDCoMKgwqDCoMKgIHN0cnVjdCB1cmIgKnB4bWl0X3VyYls4XTsKPj4+PiAt
wqDCoMKgIGRtYV9hZGRyX3QgZG1hX3RyYW5zZmVyX2FkZHI7wqDCoMKgIC8qIChpbikgZG1hIGFk
ZHIgZm9yIHRyYW5zZmVyX2J1ZmZlciAqLwo+Pj4+IC3CoMKgwqAgdTggYnBlbmRpbmdbOF07Cj4+
Pj4gLcKgwqDCoCBpbnQgbGFzdFs4XTsKPj4+PiDCoCB9Owo+Pj4+IMKgIHN0cnVjdCB4bWl0X2Zy
YW1lIHsKPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9vc19kZXAv
eG1pdF9saW51eC5jIAo+Pj4+IGIvZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9vc19kZXAveG1p
dF9saW51eC5jCj4+Pj4gaW5kZXggMDE3ZTFkNjI4NDYxLi42MWNlZDExNjA5NTEgMTAwNjQ0Cj4+
Pj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9vc19kZXAveG1pdF9saW51eC5jCj4+
Pj4gKysrIGIvZHJpdmVycy9zdGFnaW5nL3J0bDgxODhldS9vc19kZXAveG1pdF9saW51eC5jCj4+
Pj4gQEAgLTI0LDcgKzI0LDYgQEAgaW50IHJ0d19vc194bWl0X3Jlc291cmNlX2FsbG9jKHN0cnVj
dCBhZGFwdGVyICpwYWRhcHRlciwKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIF9GQUlM
Owo+Pj4+IMKgwqDCoMKgwqAgcHhtaXRidWYtPnBidWYgPSBQVFJfQUxJR04ocHhtaXRidWYtPnBh
bGxvY2F0ZWRfYnVmLCBYTUlUQlVGX0FMSUdOX1NaKTsKPj4+Cj4+PiBOb3QgcmVsYXRlZCB0byB0
aGlzIHBhdGNoIGJ1dCBrbWFsbG9jIGFsd2F5cyByZXR1cm5zIGRhdGEgd2hpY2ggaXMgYXQKPj4+
IGxlYXN0IEFSQ0hfS01BTExPQ19NSU5BTElHTiBhbGlnbmVkIHdoaWNoIGlzIG5ldmVyIGxlc3Mg
dGhhbgo+Pj4gWE1JVEJVRl9BTElHTl9TWiAoNCkgc28gdGhpcyBpcyBhIG5vLW9wLgo+IAo+IDQt
Ynl0ZSBhbGlnbm1lbnQgZm9yIDgtYnl0ZSBwb2ludGVyIChmb3IgZXhhbXBsZSB2b2lkICpwcml2
X2RhdGEpIG9uIDY0LWJpdCBhcmNoIAo+IGlzIGFuIF9lcnJvcl8uIEl04oCZcyBnb29kIHRoYXQg
a21hbGxvYyAoYW5kIHZtYWxsb2MpIGlzIGFscmVhZHkgYWxpZ25lZCB0byA4IGJ5dGVzLgo+IAo+
Pgo+PiBUaGUgYWxpZ25tZW50IGluIHRoZSBkcml2ZXIgaXMgcHJldHR5IGNyYXp5IGJlY2F1c2Ug
aXQncyBhbGwgdW5uZWNlc3NhcnkKPj4gYW5kIHNvIGNvbXBsaWNhdGVkLsKgIEV2ZXJ5IGFsbG9j
YXRpb24gaXMgNCBieXRlcyBleHRyYSBzbyB3ZSBjYW4gYWxpZ24KPj4gaXQgbGF0ZXIuCj4+Cj4+
IEFsc28gZXZlcnkgYnVmZmVyIGlzIGNhbGxlZCAicGJ1ZiIgd2hpY2ggc3RhbmRzIGZvciBwb2lu
dGVyIHRvIGJ1ZmZlci4KPj4gInBhbGxvY2F0ZWRfYnVmIiBpcyBub3QgcmVhbGx5IHVzZWZ1bCBl
aXRoZXIuCj4+Cj4+IEkgdHJpZWQgdG8gbG9vayBhdCB0aGlzIHRvIHNlZSBpZiB3ZSBjb3VsZCBj
aGFuZ2UgdGhlIGFsaWdubWVudCwgYW5kCj4+IGl0J3MgY29tcGxpY2F0ZWQgYmVjYXVzZSBvZiB0
aGUgbmFtaW5nIGFuZCB0aGUgYWxpZ25tZW50Lgo+Pgo+PiByZWdhcmRzLAo+PiBkYW4gY2FycGVu
dGVyCj4+Cj4gCj4gSSBoYXZlIGFscmVhZHkgZml4ZWQgNCBwbGFjZXMgd2l0aCB1bm5lY2Vzc2Fy
eSBhbGlnbm1lbnQsIGJ1dCwgYWxhcywgdGhlcmUgaXMgbm8gCj4gZ3JlYXQgZGVzaXJlIHRvIHRl
c3QgdGhlbSBvbiByZWFsIGhhcmR3YXJlLgoKSSBoYXZlIG5vdyB0ZXN0ZWQgb24gcmVhbCBoYXJk
d2FyZSBhbmQgaXQgd29ya3MgZmluZS4KCkFja2VkLWJ5OiBMYXJyeSBGaW5nZXIgPExhcnJ5LkZp
bmdlckBsd2Zpbmdlci5uZXQ+CgpMYXJyeQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJv
amVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4v
bGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
