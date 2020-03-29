Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BDE6C196E54
	for <lists+driverdev-devel@lfdr.de>; Sun, 29 Mar 2020 18:12:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DACB87606;
	Sun, 29 Mar 2020 16:12:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 07b4thRw5BqF; Sun, 29 Mar 2020 16:12:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B61D586EA7;
	Sun, 29 Mar 2020 16:12:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8C7491BF424
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 16:12:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 88E7988168
 for <devel@linuxdriverproject.org>; Sun, 29 Mar 2020 16:12:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WQKqNno6FpwB for <devel@linuxdriverproject.org>;
 Sun, 29 Mar 2020 16:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bombadil.infradead.org (bombadil.infradead.org
 [198.137.202.133])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2F0B087FD2
 for <devel@driverdev.osuosl.org>; Sun, 29 Mar 2020 16:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=3aGUFTlDFLNPEPyNqpXzRGp9fSJaJ2O8HpjtLH83Bzc=; b=toUsYu1doW4nFxIJJE0wkgehpy
 8+pWXT6yv3an/sQQQiVMJwupq1G8M6yulZNNRncItGo1QciGQ+sPJqNj1MEoKE7qGcZ9ZnjqWjp3q
 5uUS1IPd05dr2ID4F5Aqsoq/DbioJ8xsTjSM01ZmjsQWqgDesaxqv6mGB9pe2NGBSGlFTNS7rcszR
 7hSNi5Xdju2IC0d6shFHKh8ChqYXxCSG3sTQ5satEZ0Df05HGtPptespIxivYUJGXpXsGmI7ZYeAC
 +j1xYIr0jJY1aqNYZ9SM1VclC5a5aM0LzuHhux68gAPMbOjikBxS8iXd4SHDWM1+ECgnSh1Pfbo0q
 J/S3YhJA==;
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIaY4-0000MB-5D; Sun, 29 Mar 2020 16:12:32 +0000
Subject: Re: mmotm 2020-03-28-22-17 uploaded (staging/octeon/)
To: akpm@linux-foundation.org, broonie@kernel.org,
 linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, linux-next@vger.kernel.org, mhocko@suse.cz,
 mm-commits@vger.kernel.org, sfr@canb.auug.org.au,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
References: <20200329051805.kfaUSHrn4%akpm@linux-foundation.org>
From: Randy Dunlap <rdunlap@infradead.org>
X-Enigmail-Draft-Status: N11100
Message-ID: <873495e9-d254-cb66-7a83-2517505a2b9b@infradead.org>
Date: Sun, 29 Mar 2020 09:12:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200329051805.kfaUSHrn4%akpm@linux-foundation.org>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gMy8yOC8yMCAxMDoxOCBQTSwgYWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZyB3cm90ZToKPiBU
aGUgbW0tb2YtdGhlLW1vbWVudCBzbmFwc2hvdCAyMDIwLTAzLTI4LTIyLTE3IGhhcyBiZWVuIHVw
bG9hZGVkIHRvCj4gCj4gICAgaHR0cDovL3d3dy5vemxhYnMub3JnL35ha3BtL21tb3RtLwo+IAo+
IG1tb3RtLXJlYWRtZS50eHQgc2F5cwo+IAo+IFJFQURNRSBmb3IgbW0tb2YtdGhlLW1vbWVudDoK
PiAKPiBodHRwOi8vd3d3Lm96bGFicy5vcmcvfmFrcG0vbW1vdG0vCj4gCj4gVGhpcyBpcyBhIHNu
YXBzaG90IG9mIG15IC1tbSBwYXRjaCBxdWV1ZS4gIFVwbG9hZGVkIGF0IHJhbmRvbSBob3BlZnVs
bHkKPiBtb3JlIHRoYW4gb25jZSBhIHdlZWsuCj4gCj4gWW91IHdpbGwgbmVlZCBxdWlsdCB0byBh
cHBseSB0aGVzZSBwYXRjaGVzIHRvIHRoZSBsYXRlc3QgTGludXMgcmVsZWFzZSAoNS54Cj4gb3Ig
NS54LXJjWSkuICBUaGUgc2VyaWVzIGZpbGUgaXMgaW4gYnJva2VuLW91dC50YXIuZ3ogYW5kIGlz
IGR1cGxpY2F0ZWQgaW4KPiBodHRwOi8vb3psYWJzLm9yZy9+YWtwbS9tbW90bS9zZXJpZXMKCgpv
biBpMzg2IG9yIHg4Nl82NDoKCi4uL2RyaXZlcnMvc3RhZ2luZy9vY3Rlb24vZXRoZXJuZXQtdHgu
YzogSW4gZnVuY3Rpb24g4oCYY3ZtX29jdF94bWl04oCZOgouLi9kcml2ZXJzL3N0YWdpbmcvb2N0
ZW9uL2V0aGVybmV0LXR4LmM6MzU4OjI6IGVycm9yOiBpbXBsaWNpdCBkZWNsYXJhdGlvbiBvZiBm
dW5jdGlvbiDigJhza2JfcmVzZXRfdGPigJk7IGRpZCB5b3UgbWVhbiDigJhza2JfcmVzZXJ2ZeKA
mT8gWy1XZXJyb3I9aW1wbGljaXQtZnVuY3Rpb24tZGVjbGFyYXRpb25dCiAgc2tiX3Jlc2V0X3Rj
KHNrYik7CiAgXn5+fn5+fn5+fn5+CgpJdCBsb29rcyBsaWtlIHRoaXMgaW5saW5lIGZ1bmN0aW9u
IGhhcyBiZWVuIHJlbW92ZWQgZnJvbQo8bmV0L3NjaF9nZW5lcmljLmg+LgoKCkxvb2tzIGxpa2Ug
aXQgc2hvdWxkIGJlIHRoaXMgY2hhbmdlOgoKLQlza2JfcmVzZXRfdGMoc2tiKTsKKwlza2JfcmVz
ZXRfcmVkaXJlY3Qoc2tiKTsKCgotLSAKflJhbmR5ClJlcG9ydGVkLWJ5OiBSYW5keSBEdW5sYXAg
PHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVj
dC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlz
dGluZm8vZHJpdmVyZGV2LWRldmVsCg==
