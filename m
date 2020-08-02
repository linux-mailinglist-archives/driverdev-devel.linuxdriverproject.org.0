Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E505235613
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Aug 2020 11:10:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4430F2048C;
	Sun,  2 Aug 2020 09:10:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JttJbX-EClLO; Sun,  2 Aug 2020 09:10:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F41042042B;
	Sun,  2 Aug 2020 09:10:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7FAD71BF421
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 09:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 797A1876A0
 for <devel@linuxdriverproject.org>; Sun,  2 Aug 2020 09:10:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s6i4kMV8CmoN for <devel@linuxdriverproject.org>;
 Sun,  2 Aug 2020 09:10:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E392D87697
 for <devel@driverdev.osuosl.org>; Sun,  2 Aug 2020 09:10:04 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id w17so19305981ply.11
 for <devel@driverdev.osuosl.org>; Sun, 02 Aug 2020 02:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jMBOZeJGvfg3X8PhLQhFyeJeFCQRr0UEYDyvk1N24Yg=;
 b=amywwoYVdxR8JOo6iIDliLAeOvw9dQTtw0AvBLqLehbyuI4X1YXfRzJwuY0UXArQeD
 OimglDgIP+WDwgSQHT8VPDfC67wKadsIcJXWMNQQDazS+8gT0BJ12+uv486yn+oVlKsY
 bzokZlGxHFjemgKPkL43SK6WLq2pNnxG95GhMzd3jxt8NKItALOqyZO0M8RuoVYfz19u
 zh66T7TLPlTawIIx03+o26oIyREGnVKaxJ9zzcUFBLSemQQd6h8HJGh31FHnrQKvo1Eu
 jCquhoA2lSEOCEDz2O6mdHt8OWTKbdPG22B+kBSs6j60wpXHuN+vFGEewMxcE2Eum9hO
 RkYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jMBOZeJGvfg3X8PhLQhFyeJeFCQRr0UEYDyvk1N24Yg=;
 b=Opi4aUb1Nk1RLFRDroeH9STur++oGvbaXFM/IdGWND9mIXvN20AmBnQEmFLRCf6jp7
 dGRRxk6gMnbzVdpDnQQtWNG2eZc42+GQSUItmnJn69A6nAJK9CJs4qV8E+Fqzc98Odne
 38vk3bcsF9CP44wSNBfinBT944jNSZj/Y/6wxeayPIBwSL97JQCXmnl5lSU3+zclpddQ
 roLtNBd7m2owvmfNHUWetYbeTKDA6hxMZ6blUTBVYZf6/j/lAwcP0VR8q2VV+xBtqjBw
 QuJzrHUeryPMgEWEsq6E8GUFNAIcuBHJRs7pANxy/q2aSVo5+UlTqlTpxUZngERHT/CF
 cJSA==
X-Gm-Message-State: AOAM530szq7blpwcYGR6Tm6W4vEs/mci4m9OeXt2z5tgC62Dcur6iKtq
 bZyoKf9OQULChLsQNfPwtQg=
X-Google-Smtp-Source: ABdhPJwS8f3l9bATb4yxn1V6knGaj53cgRt8trIEoYFkckaHze4zhqd77UFOA1VNih5Wf6rvFKDHYQ==
X-Received: by 2002:a17:90a:c70b:: with SMTP id
 o11mr11399042pjt.169.1596359404190; 
 Sun, 02 Aug 2020 02:10:04 -0700 (PDT)
Received: from [192.168.0.109] ([1.186.117.197])
 by smtp.gmail.com with ESMTPSA id y200sm16267009pfb.33.2020.08.02.02.10.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 Aug 2020 02:10:03 -0700 (PDT)
Subject: Re: [PATCH v4] staging: nvec: change usage of slave to secondary
To: Marc Dietrich <marvin24@posteo.de>
References: <20200724043633.7755-1-bharadwaj.rohit8@gmail.com>
 <20200725062938.15388-1-bharadwaj.rohit8@gmail.com>
 <alpine.OSX.2.23.453.2008021007460.41131@macbook-pro.fritz.box>
From: Rohit K Bharadwaj <bharadwaj.rohit8@gmail.com>
Message-ID: <c81040b7-f094-77c7-1598-31e18d7f9402@gmail.com>
Date: Sun, 2 Aug 2020 14:39:58 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <alpine.OSX.2.23.453.2008021007460.41131@macbook-pro.fritz.box>
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 ac100@lists.launchpad.net, p.zabel@pengutronix.de, linux-tegra@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMDIvMDgvMjAgMTo0MyBwbSwgTWFyYyBEaWV0cmljaCB3cm90ZToKPiBIZWxsbyBSb2hpdCwK
PiAKPiBPbiBTYXQsIDI1IEp1bCAyMDIwLCBSb2hpdCBLIEJoYXJhZHdhaiB3cm90ZToKPiAKPj4g
Y2hhbmdlZCB1c2FnZSBvZiBzbGF2ZSAod2hpY2ggaXMgZGVwcmVjYXRlZCkgdG8gc2Vjb25kYXJ5
IHdpdGhvdXQgYnJlYWtpbmcgdGhlIGRyaXZlcgo+Pgo+PiBUZXN0ZWQtYnk6IERhbiBDYXJwZW50
ZXIgPGRhbi5jYXJwZW50ZXJAb3JhY2xlLmNvbT4KPj4gQWNrZWQtYnk6IE1hcmMgRGlldHJpY2gg
PG1hcnZpbjI0QHBvc3Rlby5kZT4KPj4gU2lnbmVkLW9mZi1ieTogUm9oaXQgSyBCaGFyYWR3YWog
PGJoYXJhZHdhai5yb2hpdDhAZ21haWwuY29tPgo+IAo+IHBsZWFzZSBkb24ndCBhZGQgIiotYnki
J3MgYnkgeW91cnNlbGYgd2hlbiB5b3Ugc2VuZCBhIG5ldyBwYXRjaCB2ZXJzaW9uLgo+IFRoZXNl
IHdpbGwgYmUgYWRkZWQgImF1dG9tYXRpY2FsbHkiIGR1cmluZyB0aGUgcGF0Y2ggaGFuZGxpbmcu
IEkganVzdCBzYWlkLCBJICp3aWxsKiBhY2sgeW91ciBwYXRjaCwgd2hlbiB5b3UgcmVzZW50IGl0
LCBub3QgdGhhdCBJIGRpZCBpdCBhbHJlYWR5Lgo+IAo+IFRoYW5rcyEKPiAKPiBNYXJjCj4gCj4+
IC0tLQo+PiB2NDogdW5kbyB0aGUgY2hhbmdlcyAod2hpY2ggYnJva2UgdGhlIGRyaXZlcikgdG8g
dGhpcyBsaW5lOiBpZiAob2ZfcHJvcGVydHlfcmVhZF91MzIoZGV2LT5vZl9ub2RlLCAic2xhdmUt
YWRkciIsICZudmVjLT5pMmNfYWRkcikpCj4+IHYzOiBjaGFuZ2UgcGF0Y2ggc3ViamVjdCwgYWRk
IHZlcnNpb24gaGlzdG9yeQo+PiB2MjogYWRkIGNoYW5nZWxvZyB0ZXh0IGluIGJvZHkgb2YgbWFp
bAo+PiB2MTogZml4IHN0eWxlIGlzc3VlcyBieSBjaGFuZ2luZyB1c2FnZSBvZiBzbGF2ZSB0byBz
ZWNvbmRhcnkKPj4KPj4gZHJpdmVycy9zdGFnaW5nL252ZWMvbnZlYy5jIHwgMTAgKysrKystLS0t
LQo+PiAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Pgo+
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL252ZWMvbnZlYy5jIGIvZHJpdmVycy9zdGFn
aW5nL252ZWMvbnZlYy5jCj4+IGluZGV4IDM2MGVjMDQwNzc0MC4uYTdlOTk1YmZlOTg5IDEwMDY0
NAo+PiAtLS0gYS9kcml2ZXJzL3N0YWdpbmcvbnZlYy9udmVjLmMKPj4gKysrIGIvZHJpdmVycy9z
dGFnaW5nL252ZWMvbnZlYy5jCj4+IEBAIC03MTgsNyArNzE4LDcgQEAgc3RhdGljIGlycXJldHVy
bl90IG52ZWNfaW50ZXJydXB0KGludCBpcnEsIHZvaWQgKmRldikKPj4gwqDCoMKgwqByZXR1cm4g
SVJRX0hBTkRMRUQ7Cj4+IH0KPj4KPj4gLXN0YXRpYyB2b2lkIHRlZ3JhX2luaXRfaTJjX3NsYXZl
KHN0cnVjdCBudmVjX2NoaXAgKm52ZWMpCj4+ICtzdGF0aWMgdm9pZCB0ZWdyYV9pbml0X2kyY19z
ZWNvbmRhcnkoc3RydWN0IG52ZWNfY2hpcCAqbnZlYykKPj4gewo+PiDCoMKgwqDCoHUzMiB2YWw7
Cj4+Cj4+IEBAIC03NDQsNyArNzQ0LDcgQEAgc3RhdGljIHZvaWQgdGVncmFfaW5pdF9pMmNfc2xh
dmUoc3RydWN0IG52ZWNfY2hpcCAqbnZlYykKPj4gfQo+Pgo+PiAjaWZkZWYgQ09ORklHX1BNX1NM
RUVQCj4+IC1zdGF0aWMgdm9pZCBudmVjX2Rpc2FibGVfaTJjX3NsYXZlKHN0cnVjdCBudmVjX2No
aXAgKm52ZWMpCj4+ICtzdGF0aWMgdm9pZCBudmVjX2Rpc2FibGVfaTJjX3NlY29uZGFyeShzdHJ1
Y3QgbnZlY19jaGlwICpudmVjKQo+PiB7Cj4+IMKgwqDCoMKgZGlzYWJsZV9pcnEobnZlYy0+aXJx
KTsKPj4gwqDCoMKgwqB3cml0ZWwoSTJDX1NMX05FV1NMIHwgSTJDX1NMX05BQ0ssIG52ZWMtPmJh
c2UgKyBJMkNfU0xfQ05GRyk7Cj4+IEBAIC04MzksNyArODM5LDcgQEAgc3RhdGljIGludCB0ZWdy
YV9udmVjX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+IMKgwqDCoMKgfQo+
PiDCoMKgwqDCoGRpc2FibGVfaXJxKG52ZWMtPmlycSk7Cj4+Cj4+IC3CoMKgwqAgdGVncmFfaW5p
dF9pMmNfc2xhdmUobnZlYyk7Cj4+ICvCoMKgwqAgdGVncmFfaW5pdF9pMmNfc2Vjb25kYXJ5KG52
ZWMpOwo+Pgo+PiDCoMKgwqDCoC8qIGVuYWJsZSBldmVudCByZXBvcnRpbmcgKi8KPj4gwqDCoMKg
wqBudmVjX3RvZ2dsZV9nbG9iYWxfZXZlbnRzKG52ZWMsIHRydWUpOwo+PiBAQCAtOTEzLDcgKzkx
Myw3IEBAIHN0YXRpYyBpbnQgbnZlY19zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPj4gwqDC
oMKgwqBpZiAoIWVycikKPj4gwqDCoMKgwqDCoMKgwqAgbnZlY19tc2dfZnJlZShudmVjLCBtc2cp
Owo+Pgo+PiAtwqDCoMKgIG52ZWNfZGlzYWJsZV9pMmNfc2xhdmUobnZlYyk7Cj4+ICvCoMKgwqAg
bnZlY19kaXNhYmxlX2kyY19zZWNvbmRhcnkobnZlYyk7Cj4+Cj4+IMKgwqDCoMKgcmV0dXJuIDA7
Cj4+IH0KPj4gQEAgLTkyMyw3ICs5MjMsNyBAQCBzdGF0aWMgaW50IG52ZWNfcmVzdW1lKHN0cnVj
dCBkZXZpY2UgKmRldikKPj4gwqDCoMKgwqBzdHJ1Y3QgbnZlY19jaGlwICpudmVjID0gZGV2X2dl
dF9kcnZkYXRhKGRldik7Cj4+Cj4+IMKgwqDCoMKgZGV2X2RiZyhudmVjLT5kZXYsICJyZXN1bWlu
Z1xuIik7Cj4+IC3CoMKgwqAgdGVncmFfaW5pdF9pMmNfc2xhdmUobnZlYyk7Cj4+ICvCoMKgwqAg
dGVncmFfaW5pdF9pMmNfc2Vjb25kYXJ5KG52ZWMpOwo+PiDCoMKgwqDCoG52ZWNfdG9nZ2xlX2ds
b2JhbF9ldmVudHMobnZlYywgdHJ1ZSk7Cj4+Cj4+IMKgwqDCoMKgcmV0dXJuIDA7Cj4+IC0twqAK
Pj4gMi4yNS4xCj4+Cj4+CkknbSBzb3JyeSBmb3IgdGhlIHRhZ3Mgc2lyLCBJIHdvdWxkIG1ha2Ug
c3VyZSBub3QgdG8gbWFrZSB0aGUgbWlzdGFrZXMgaW4gZnV0dXJlLCBUaGFua3MgZm9yIHRha2lu
ZyB5b3VyIHRpbWUsIEkgaG9wZSBJIGNhbiBjb250cmlidXRlIG9uIG90aGVyIGFzcGVjdHMgb2Yg
TGludXgga2VybmVsLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
