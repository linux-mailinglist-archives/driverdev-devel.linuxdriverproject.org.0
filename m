Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F204F94FDAE
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Aug 2024 08:16:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE5A9402D9;
	Tue, 13 Aug 2024 06:16:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 3vJ6Rt9mMX3e; Tue, 13 Aug 2024 06:16:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6575940305
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6575940305;
	Tue, 13 Aug 2024 06:16:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1DBBA1BF410
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2024 06:16:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0B453409DC
 for <devel@linuxdriverproject.org>; Tue, 13 Aug 2024 06:16:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HgC7LRTX7nm7 for <devel@linuxdriverproject.org>;
 Tue, 13 Aug 2024 06:16:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::132; helo=mail-lf1-x132.google.com;
 envelope-from=dualli@chromium.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 501E240133
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 501E240133
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com
 [IPv6:2a00:1450:4864:20::132])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 501E240133
 for <devel@driverdev.osuosl.org>; Tue, 13 Aug 2024 06:16:41 +0000 (UTC)
Received: by mail-lf1-x132.google.com with SMTP id
 2adb3069b0e04-52ed741fe46so5480715e87.0
 for <devel@driverdev.osuosl.org>; Mon, 12 Aug 2024 23:16:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1723529799; x=1724134599;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=YmzoXafzzOE1rMuPRaQhJ4b0giBbMD8YUbTNEAqnvGA=;
 b=JORx0hzYyA54D7nXfQE7tgzC3mdR5bABBM+4fPqIUeeoW9Tf4cqQBPR5c5oQCms4L4
 5TGEGeAl1ZaxMjupM1Pcv7ITBX+N2sB9WHhF6xF+O+hDUspdF99jZ1ps06iPTAaTdFjZ
 F27w2OIrWAkCpAsy8Y97lNhbhuxu0h103/CSVAX13ZECmK0wcUKY5njU/EiZkZT/a2cv
 PeIQ1nouuEU4CvZv4AxxmiFbqgXccmAv9lAo+nAj4nZQjOxyqz0Rcod5gawyO4QsuKRW
 QMf182bBn/NCuTZUckZz5AMYRAGmI8Q6QZfZz9/p/jt8ymDHrkr63W2SYrbw+mHn32Pw
 Ji/A==
X-Forwarded-Encrypted: i=1;
 AJvYcCXXgcgfrX+n7UtH1l60/s19GjhCOPzosF5BIz4UbMwlZx+CcF5DqOw3NjFwuA4bxJEGLGOi4xtPbXKgG1voUcM4aI7xcvSl/Z5faQ==
X-Gm-Message-State: AOJu0YzBC0VCcGUFiPaCeu5n/QBTUg8KM7m0uYxCw0pX013z6UlqyxIW
 WVP+CzKNvnRUG8EtKbElcieBZG9dbMzV21/+LETliDrMsVkL+Dr/kXhqBo1u74glIpWOsNGv0n1
 KDIwXwjY6vkYd/QaZcKLLmvTZu4FMMzBT/UBp
X-Google-Smtp-Source: AGHT+IHu6zKBIZ4X+Jnv0cVaNkX2ByqQvEYyg3vpF7NwXvrGAvo32O6JWXjruspUcp673wvWIwcVakKmZkhIdZctkMc=
X-Received: by 2002:a05:6512:3083:b0:52e:9d2c:1c56 with SMTP id
 2adb3069b0e04-5321366369amr1519996e87.35.1723529798714; Mon, 12 Aug 2024
 23:16:38 -0700 (PDT)
MIME-Version: 1.0
References: <20240812211844.4107494-1-dualli@chromium.org>
 <2024081341-egging-custodian-428d@gregkh>
In-Reply-To: <2024081341-egging-custodian-428d@gregkh>
From: Li Li <dualli@chromium.org>
Date: Mon, 12 Aug 2024 23:16:27 -0700
Message-ID: <CANBPYPjCobjbtyKoFJHAciE3=m0Z_QeDTdD9C=ggCcvaWy0daA@mail.gmail.com>
Subject: Re: [PATCH v1] add binder genl for txn report
To: Greg KH <gregkh@linuxfoundation.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1723529799; x=1724134599; darn=driverdev.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=YmzoXafzzOE1rMuPRaQhJ4b0giBbMD8YUbTNEAqnvGA=;
 b=T4B/IDB5QmuSuGGoSxYYdDXEXpaFtvAwQcXHZG26tVv+kR8yZd3bh+ePDJzCGr71c8
 5yLmANROUvokqWRUKXPC6donnY8Hq3aVKLE03H9hxDLmUMGwee9RUYXO6F85hpBMSPbU
 NZBsuU/vlyGyqGgCltQizIvJCwsJ/SPNtvHbw=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=chromium.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=chromium.org header.i=@chromium.org header.a=rsa-sha256
 header.s=google header.b=T4B/IDB5
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
Cc: dualli@google.com, devel@driverdev.osuosl.org, brauner@kernel.org,
 kernel-team@android.com, tkjos@android.com, arnd@arndb.de, surenb@google.com,
 masahiroy@kernel.org, cmllamas@google.com, linux-kernel@vger.kernel.org,
 hridya@google.com, arve@android.com, smoreland@google.com,
 joel@joelfernandes.org, maco@android.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gTW9uLCBBdWcgMTIsIDIwMjQgYXQgMTA6MTPigK9QTSBHcmVnIEtIIDxncmVna2hAbGludXhm
b3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sIEF1ZyAxMiwgMjAyNCBhdCAwMjoxODo0
NFBNIC0wNzAwLCBMaSBMaSB3cm90ZToKPiA+IEZyb206IExpIExpIDxkdWFsbGlAZ29vZ2xlLmNv
bT4KPgo+IFNvcnJ5LCBidXQgSSBjYW4gbm90IHBhcnNlIHlvdXIgU3ViamVjdDogbGluZSBhdCBh
bGwuICBQbGVhc2UgdXNlCj4gdm93ZWxzLCB3ZSBkb24ndCBoYXZlIGEgbGFjayBvZiB0aGVtIDop
Cj4KPiBBbHNvIGxvb2sgYXQgaG93IG90aGVyIHBhdGNoZXMgYXJlIGZvcm1hdHRlZCBmb3IgdGhl
c2UgZmlsZXMgdG8gZ2V0IGFuCj4gaWRlYSBvZiBob3cgdG8gY3JlYXRlIGEgZ29vZCBzdWJqZWN0
IGxpbmUuCgpUaGFuayB5b3UgZm9yIHJldmlld2luZyB0aGUgcGF0Y2ghCgpTdXJlLCBJJ2xsIGZp
bmQgYSBtb3JlIG1lYW5pbmdmdWwgc3ViamVjdCBpbiB2Mi4KCj4gPiBUbyBwcmV2ZW50IG1ha2lu
ZyB0aGUgYWxyZWFkeSBibG9hdGVkIGJpbmRlci5jIGV2ZW4gYmlnZ2VyLCBhIG5ldyBzb3VyY2UK
PiA+IGZpbGUgYmluZGVyX2dlbmwuYyBpcyBjcmVhdGVkIHRvIGhvc3QgdGhvc2UgZ2VuZXJpYyBu
ZXRsaW5rIGNvZGUuCj4KPiAiZ2VubCIgaXMgYSByb3VnaCBhYmJyZXZpYXRpb24gdGhhdCBpcyBu
b3QgZ29pbmcgdG8gYmUgZWFzeSB0byByZW1lbWJlciwKPiB3aGF0J3Mgd3Jvbmcgd2l0aCAiYmlu
ZGVyX25ldGxpbmsuYyI/CgpJdCdzIGp1c3QgYmVjYXVzZSBnZW5sIGhhcyBhbHJlYWR5IGJlZW4g
dXNlZCBpbiBib3RoIG9mIGdlbmVyaWMgbmV0bGluawprZXJuZWwgY29kZSAoZS5nLiBpbiBsaW51
eC9pbmNsdWRlL25ldC9nZW5ldGxpbmsuaCkgYW5kIHVzZXIgc3BhY2UgbGlicmFyaWVzCmh0dHBz
Oi8vbWFuNy5vcmcvbGludXgvbWFuLXBhZ2VzL21hbjgvZ2VubC44Lmh0bWwuCgpJJ20gaGFwcHkg
dG8gcmVuYW1lIGl0IHRvIGJpbmRlcl9uZXRsaW5rLmMgaWYgdGhhdCdzIGVhc2llciB0byByZW1l
bWJlci4KCj4KPgo+ID4KPiA+IFVzYWdlIGV4YW1wbGUgKHVzZXIgc3BhY2UgcHNldWRvIGNvZGUp
Ogo+ID4KPiA+ICAgICAgIC8vIGVuYWJsZSBiaW5kZXIgcmVwb3J0IGZyb20gdGhlIGludGVyZXN0
ZWQgYmluZGVyIGNvbnRleHQocykKPiA+ICAgICAgIHN0cnVjdCBiaW5kZXJfcmVwb3J0X2luZm8g
aW5mbyA9IHswLCBCSU5ERVJfUkVQT1JUX0FMTH07Cj4gPiAgICAgICBpb2N0bChiaW5kZXIxLCBC
SU5ERVJfRU5BQkxFX1JFUE9SVCwgJmluZm8pOwo+ID4gICAgICAgaW9jdGwoYmluZGVyMiwgQklO
REVSX0VOQUJMRV9SRVBPUlQsICZpbmZvKTsKPiA+Cj4gPiAgICAgICAvLyBzZXQgb3B0aW9uYWwg
cGVyLXByb2Nlc3MgcmVwb3J0LCBvdmVycmlkaW5nIHRoZSBnbG9iYWwgb25lCj4gPiAgICAgICBz
dHJ1Y3QgYmluZGVyX3JlcG9ydF9pbmZvIGluZm8yOwo+ID4gICAgICAgaW5mbzIucGlkID0gZ2V0
cGlkKCk7Cj4gPiAgICAgICBpbmZvMi5mbGFncyA9IEJJTkRFUl9SRVBPUlRfRkFJTEVEIHwgQklO
REVSX1JFUE9SVF9PVkVSUklERTsKPiA+ICAgICAgIGlvY3RsKGJpbmRlcjIsIEJJTkRFUl9FTkFC
TEVfUkVQT1JULCAmaW5mbzIpOwo+ID4KPiA+ICAgICAgIC8vIG9wZW4gbmV0bGluayBzb2NrZXQK
PiA+ICAgICAgIGludCBmZCA9IHNvY2tldChBRl9ORVRMSU5LLCBTT0NLX1JBVywgTkVUTElOS19H
RU5FUklDKTsKPiA+Cj4gPiAgICAgICAvLyBiaW5kIG5ldGxpbmsgc29ja2V0Cj4gPiAgICAgICBi
aW5kKGZkLCBzdHJ1Y3Qgc29ja2V0YWRkcik7Cj4gPgo+ID4gICAgICAgLy8gZ2V0IHRoZSBmYW1p
bHkgaWQgb2YgYmluZGVyIGdlbmVyaWMgbmV0bGluawo+ID4gICAgICAgc2VuZChmZCwgQ1RSTF9D
TURfR0VURkFNSUxZLCBDVFJMX0FUVFJfRkFNSUxZX05BTUUpOwo+ID4gICAgICAgaW50IGlkID0g
cmVjdihDVFJMX0FUVFJfRkFNSUxZX0lEKTsKPiA+Cj4gPiAgICAgICAvLyByZWdpc3RlciB0aGUg
Y3VycmVudCBwcm9jZXNzIHRvIHJlY2VpdmUgYmluZGVyIHJlcG9ydHMKPiA+ICAgICAgIHNlbmQo
ZmQsIGlkLCBCSU5ERVJfR0VOTF9DTURfUkVHSVNURVIpOwo+ID4KPiA+ICAgICAgIC8vIHZlcmlm
eSByZWdpc3RyYXRpb24gYnkgcmVhZGluZyBiYWNrIHRoZSByZWdpc3RlcmVkIHBpZAo+ID4gICAg
ICAgcmVjdihmZCwgQklOREVSX0dFTkxfQVRUUl9QSUQsICZwaWQpOwo+ID4KPiA+ICAgICAgIC8v
IHdhaXQgYW5kIHJlYWQgYWxsIGJpbmRlciByZXBvcnRzCj4gPiAgICAgICB3aGlsZSAocnVubmlu
Zykgewo+ID4gICAgICAgICAgICAgICBzdHJ1Y3QgYmluZGVyX3JlcG9ydCByZXBvcnQ7Cj4gPiAg
ICAgICAgICAgICAgIHJlY3YoZmQsIEJJTkRFUl9HRU5MX0FUVFJfUkVQT1JULCAmcmVwb3J0KTsK
PiA+Cj4gPiAgICAgICAgICAgICAgIC8vIHByb2Nlc3Mgc3RydWN0IGJpbmRlcl9yZXBvcnQKPiA+
ICAgICAgICAgICAgICAgZG9fc29tZXRoaW5nKCZyZXBvcnQpOwo+ID4gICAgICAgfQo+ID4KPiA+
ICAgICAgIC8vIGNsZWFuIHVwCj4gPiAgICAgICBjbG9zZShmZCk7Cj4KPiBXaGF0IHVzZXJzcGFj
ZSBjb2RlIGlzIG5vdyBnb2luZyB0byB1c2UgdGhpcyBhbmQgcmVxdWlyZSBpdD8gIEhvdyB3YXMg
aXQKPiB0ZXN0ZWQ/ICBXaGVyZSBpcyB0aGUgdGVzdCBjb2RlPyAgV2hlcmUgaXMgdGhlIG5ldyB1
c2VyL2tlcm5lbCBhcGkgdGhhdAo+IHlvdSBjcmVhdGVkIGhlcmUgZG9jdW1lbnRlZD8KCkFzIG1l
bnRpb25lZCBpbiB0aGUgY29tbWl0IG1lc3NhZ2UsIGJpbmRlciBpcyB1c2VkIGluIEFuZHJvaWQg
T1MuIEJ1dCB0aGUKdXNlciBzcGFjZSBhZG1pbmlzdHJhdGlvbiBwcm9jZXNzIGNhbiBkbyBsaXR0
bGUgdG8gZGVhbCB3aXRoIGJpbmRlciB0cmFuc2FjdGlvbgplcnJvcnMuIFRoaXMgaXMgdGVzdGVk
IHdpdGggQW5kcm9pZC4gSSdsbCB1cGxvYWQgdGhlIHVzZXIgc3BhY2UgY29kZSB0byBBT1NQLgpJ
ZiB0aGVyZSdzIGEgYmV0dGVyIG9wdGlvbiB0byBob3N0IHRoZSB0ZXN0IGNvZGUsIGUuZy4gYSBz
bWFsbGVyIGFuZApzaW1wbGVyIHByb2plY3QKdGhhdCB1c2VzIGJpbmRlciwgcGxlYXNlIGxldCBt
ZSBrbm93LgoKPgo+IFlvdSBhZGRlZCBhIG5ldyBpb2N0bCBoZXJlIGFzIHdlbGwsIHdoeSBub3Qg
bWVudGlvbiB0aGF0PyAgV2h5IGlzIGl0Cj4gbmVlZGVkPyAgV2h5IG5vdCBhbHdheXMgZW1pdCBu
ZXRsaW5rIG1lc3NhZ2VzPyAgSG93IGRvIHlvdSB0dXJuIHRoZW0KPiBvZmY/CgpUaGUgZ2VuZXJp
YyBuZXRsaW5rIG1lc3NhZ2UgaXMgYSBjb252ZW5pZW50IHdheSBmb3IgdGhlIGtlcm5lbCBkcml2
ZXIgdG8gc2VuZAppbmZvcm1hdGlvbiB0byB1c2VyIHNwYWNlLiBUZWNobmljYWxseSBpdCdzIHBv
c3NpYmxlIHRvIHJlcGxhY2UgdGhpcwpuZXcgaW9jdGwgd2l0aAphIG5ldGxpbmsgbWVzc2FnZS4g
QnV0IHRoYXQgcmVxdWlyZXMgbXVjaCBtb3JlIHVubmVjZXNzYXJ5IGNvZGUgcGFyc2luZyB0aGUK
cmF3IGJ5dGUgc3RyZWFtcyBhbmQgYWNjZXNzaW5nIGludGVybmFsIGJpbmRlcl9wcm9jIGFuZCBv
dGhlciBzdHJ1Y3R1cmVzIGZyb20KbmV0bGluayBsYXllci4gSXQncyBtdWNoIG1vcmUgZWxlZ2Fu
dCB0byB1c2UgYW4gaW9jdGwgd2l0aCBvbmx5IGEKY291cGxlIGxpbmVzIG9mCnNvdXJjZSBjb2Rl
LgoKVG8gdHVybiB0aGVtIG9mZiwganVzdCBjYWxsIHRoZSBzYW1lIGlvY3RsLCByZXNldHRpbmcg
dGhlIGZsYWdzIHRvIDAuClRoYXQgc2FpZCwgdGhlCm5hbWUgb2YgdGhpcyBuZXcgaW9jdGwgKEJJ
TkRFUl9FTkFCTEVfUkVQT1JUKSBpc24ndCBnb29kIGVub3VnaC4KV2hhdCBkbyB5b3UgdGhpbmsg
aWYgSSBjaGFuZ2UgaXQgdG8gQklOREVSX1NFVF9ORVRMSU5LX1JFUE9SVD8KCj4KPiBBbmQgaG93
IGRvZXMgdGhpcyBkZWFsIHdpdGggYmluZGVyIG5hbWVzcGFjZXM/ICBBcmUgdGhlc2UgbWVzc2Fn
ZXMgYWxsCj4gbm93ICJnbG9iYWwiIHNvbWVob3c/ICBPciBhcmUgdGhleSBzZXBhcmF0ZWQgcHJv
cGVybHkgcGVyIG5hbWVzcGFjZT8KClRoZSBuZXcgaW9jdGwgQklOREVSX0VOQUJMRV9SRVBPUlQg
KGFnYWluLCBpdCBkZXNlcnZlcyBhIGJldHRlciBuYW1lKQpzZXRzIHRoZSByZXBvcnRfZmxhZ3Mg
Zm9yIGl0cyBhc3NvY2lhdGVkIGJpbmRlciBjb250ZXh0LiBFYWNoIGJpbmRlciBjb250ZXh0IGhh
cwppdHMgb3duIHNldHRpbmdzLiBUaGUgbWVzc2FnZXMgZnJvbSBhbGwgYmluZGVyIGNvbnRleHRz
IGFyZSBzZW50IHRvIHVzZXIgc3BhY2UKdmlhIHRoZSBzYW1lIG5ldGxpbmsgc29ja2V0LiBUaGUg
dXNlciBzcGFjZSBjb2RlIGNhbiBlbmFibGUgdGhlIHJlcG9ydHMgZm9yCmVhY2ggYmluZGVyIGNv
bnRleHQgc2VwYXJhdGVseSBhbmQgZGlzdGluZ3Vpc2ggdGhlIG5ldGxpbmsgbWVzc2FnZXMgYnkg
dGhlCm5hbWUgb2YgdGhlIGJpbmRlciBjb250ZXh0LgoKSXQncyBhbHNvIHBvc3NpYmxlIHRvIGhh
dmUgb25lIG5ldGxpbmsgc29ja2V0IGZvciBlYWNoIGJpbmRlciBjb250ZXh0LgpCdXQgaXQgc2Vl
bXMKbGlrZSBvdmVya2lsbCB0byBtZS4KClRoYW5rcywKTGkKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwgbWFpbGluZyBsaXN0CmRldmVsQGxpbnV4
ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRldi5saW51eGRyaXZlcnByb2plY3Qub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVsCg==
