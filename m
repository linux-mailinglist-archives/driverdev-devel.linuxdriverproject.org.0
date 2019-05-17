Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3AB21A98
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 17:33:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E536987A15;
	Fri, 17 May 2019 15:33:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XElSH5aLrpSh; Fri, 17 May 2019 15:33:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2DC6B8695C;
	Fri, 17 May 2019 15:33:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BBC421BF973
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 15:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B590A2270C
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 15:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NFJ9xcjvky2T for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 15:33:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 740F72263C
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 15:33:45 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id g16so5815146iom.9
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:33:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=GoGLeBQVAsYPYmaa8owBbA17fSxllGxNfZRsvsyP5GA=;
 b=j3ZjM6EDepNj7gaQ6h4Jc48vu7SKp/YzHnh5TSiOz/PRaAaqMHgYMFBnmVLyxYdgEI
 EZIm0sRxvvLLTdG3nXCjf6pcaXNRY8jguJrgGfFWE6IWp4UzBWXCrJdMg/nzVMAUyVai
 cLtTR0Y+Woe+PQAh05Xux2EE5jB/GQw49HoVmthVhOpKfIoPkr1rHJm3bQ8amLoQnOyV
 IwOYzDJxuO8YKExzbhetrm2kYqraUd2NNa9oYLEBqOssVdGFN2iA8NwLr1G8Jd+2h51C
 A+5gMHL7Z6CKMAXsWchHvo/j2ltJ+E0DnWKTeh/9MdbLNqbOZfDuaC7YaKx5D2+4U19z
 4FIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=GoGLeBQVAsYPYmaa8owBbA17fSxllGxNfZRsvsyP5GA=;
 b=U/8O+VcJeKmPNRMueRfiQPhmx+2cdaGnEvaseRQmjnkLHdYsVGQlBBDwWuTKhZ795n
 APtKnouHn+Fts4Q8DU+TGMCy5uyB83uU749MewNOpZfhISoqlUvzBb8CtieqPO7n9c15
 e1BFLHXJNxkBOCwM9xrOKqe9PSlP7QmNoV95+gEa70rXEJd8crq1BJjNRsRr16Q2piYS
 5iHeSpXM+yTgH6cUDiOD+B6k5c5vWKOh4i3Mi1j52zOkVnSvU8xSHciW9SqlzHSkZrri
 Gmq5qhmEu53E9VMZIR56sb1sNXzodgII9Td2mauCqcUCNGA7DXGitsn9CJ17K8uonZUB
 hGbw==
X-Gm-Message-State: APjAAAV/zbqZoGzTyfO90KK8kM8pcEOpx7vDDnNbTvpFBZ2nunf4lH1+
 aU/OORYSqgAWJjQQBP45jFij7cQn333CGJY14Djp7tNPWkk=
X-Google-Smtp-Source: APXvYqwhVUxb9Ppd9SQcF28GTRh3a9btGC2LzO1osXyanXipbzAKyZjnLjxnOQlqzErLhh5oOMCg7n6jmWzuVCmXyvo=
X-Received: by 2002:a5d:9dc2:: with SMTP id 2mr5594339ioo.3.1558107224311;
 Fri, 17 May 2019 08:33:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAHRSSEy3od0-7HMCOjbHprc9ihu3VqkJi1-5OKew0oN-2BcPvA@mail.gmail.com>
 <0000000000001165cb058538aaee@google.com>
 <CACT4Y+bvMEQRcxqM4c9zc-eySQBnuGipwudCNvBv5f+Dgyr3ow@mail.gmail.com>
 <CAHRSSEyFoGXLnR4RCf-_eefMjf18pPKmJni7GWTROtPmYAnaOA@mail.gmail.com>
In-Reply-To: <CAHRSSEyFoGXLnR4RCf-_eefMjf18pPKmJni7GWTROtPmYAnaOA@mail.gmail.com>
From: Dmitry Vyukov <dvyukov@google.com>
Date: Fri, 17 May 2019 17:33:32 +0200
Message-ID: <CACT4Y+aH8eApRv8u_DKh8Rr4Rr70GK4Lv1Wxac=18DxXu8GWjw@mail.gmail.com>
Subject: Re: kernel BUG at drivers/android/binder_alloc.c:LINE! (3)
To: Todd Kjos <tkjos@google.com>
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Todd Kjos <tkjos@android.com>,
 syzbot <syzbot+f9f3f388440283da2965@syzkaller.appspotmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCBNYXkgMTcsIDIwMTkgYXQgNToyNiBQTSBUb2RkIEtqb3MgPHRram9zQGdvb2dsZS5j
b20+IHdyb3RlOgo+Cj4gWWVzIChhbmQgc3l6Ym90IHNlZW1lZCB0byBjb25maXJtIHRoZSBmaXgp
LiBJIGRpZG4ndCByZWFsaXplIEkgbmVlZGVkCj4gdG8gbWFudWFsbHkgY2xvc2UgdGhlIGlzc3Vl
LiBJIGd1ZXNzIHlvdSBjbG9zZWQgaXQgeWVzdGVyZGF5LgoKVGhpcyBpcyByZXF1aXJlZCB0byBh
dXRvLWNsb3NlIHRoZSBidWcgd2hlbiB0aGUgY29tbWl0IGlzIG1lcmdlZDoKCj4gSU1QT1JUQU5U
OiBpZiB5b3UgZml4IHRoZSBidWcsIHBsZWFzZSBhZGQgdGhlIGZvbGxvd2luZyB0YWcgdG8gdGhl
IGNvbW1pdDoKPiBSZXBvcnRlZC1ieTogc3l6Ym90K2Y5ZjNmMzg4NDQwMjgzZGEyOTY1QHN5emth
bGxlci5hcHBzcG90bWFpbC5jb20KCk90aGVyd2lzZSBzb21lYm9keSBuZWVkcyB0byBzYXk6Cgoj
c3l6IGZpeDogYmluZGVyOiBmaXggQlVHX09OIGZvdW5kIGJ5IHNlbGludXgtdGVzdHN1aXRlCgoK
PiBGcm9tOiBEbWl0cnkgVnl1a292IDxkdnl1a292QGdvb2dsZS5jb20+Cj4gRGF0ZTogRnJpLCBN
YXkgMTcsIDIwMTkgYXQgMzowOCBBTQo+IFRvOiBzeXpib3QKPiBDYzogQXJ2ZSBIasO4bm5ldsOl
ZywgQ2hyaXN0aWFuIEJyYXVuZXIsIG9wZW4gbGlzdDpBTkRST0lEIERSSVZFUlMsIEdyZWcKPiBL
cm9haC1IYXJ0bWFuLCBKb2VsIEZlcm5hbmRlcywgTEtNTCwgTWFydGlqbiBDb2VuZW4sIHN5emth
bGxlci1idWdzLAo+IFRvZGQgS2pvcyA8dGtqb3NAYW5kcm9pZC5jb20+LCBUb2RkIEtqb3MgPHRr
am9zQGdvb2dsZS5jb20+Cj4KPiA+IE9uIEZyaSwgTWFyIDI5LCAyMDE5IGF0IDEwOjU1IEFNIHN5
emJvdAo+ID4gPHN5emJvdCtmOWYzZjM4ODQ0MDI4M2RhMjk2NUBzeXprYWxsZXIuYXBwc3BvdG1h
aWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gSGVsbG8sCj4gPiA+Cj4gPiA+IHN5emJvdCBoYXMg
dGVzdGVkIHRoZSBwcm9wb3NlZCBwYXRjaCBhbmQgdGhlIHJlcHJvZHVjZXIgZGlkIG5vdCB0cmln
Z2VyCj4gPiA+IGNyYXNoOgo+ID4gPgo+ID4gPiBSZXBvcnRlZC1hbmQtdGVzdGVkLWJ5Ogo+ID4g
PiBzeXpib3QrZjlmM2YzODg0NDAyODNkYTI5NjVAc3l6a2FsbGVyLmFwcHNwb3RtYWlsLmNvbQo+
ID4gPgo+ID4gPiBUZXN0ZWQgb246Cj4gPiA+Cj4gPiA+IGNvbW1pdDogICAgICAgICA4YzJmZmQ5
MSBMaW51eCA1LjEtcmMyCj4gPiA+IGdpdCB0cmVlOgo+ID4gPiBnaXQ6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvc3RhYmxlL2xpbnV4LXN0YWJsZS5naXQgbWFzdGVy
Cj4gPiA+IGtlcm5lbCBjb25maWc6ICBodHRwczovL3N5emthbGxlci5hcHBzcG90LmNvbS94Ly5j
b25maWc/eD04ZGNkY2UyNWVhNzJiZWRmCj4gPiA+IGNvbXBpbGVyOiAgICAgICBnY2MgKEdDQykg
OS4wLjAgMjAxODEyMzEgKGV4cGVyaW1lbnRhbCkKPiA+ID4gcGF0Y2g6ICAgICAgICAgIGh0dHBz
Oi8vc3l6a2FsbGVyLmFwcHNwb3QuY29tL3gvcGF0Y2guZGlmZj94PTEwZmVkNjYzMjAwMDAwCj4g
PiA+Cj4gPiA+IE5vdGU6IHRlc3RpbmcgaXMgZG9uZSBieSBhIHJvYm90IGFuZCBpcyBiZXN0LWVm
Zm9ydCBvbmx5Lgo+ID4KPiA+Cj4gPiBUb2RkLAo+ID4KPiA+IFNob3VsZCB0aGlzIHBhdGNoIGZp
eCB0aGUgYnVnPyBTaG91bGQgd2UgY2xvc2UgdGhlIGJ1ZyBhcyBmaXhlZCB0aGVuPwo+ID4gSW4g
bXkgbG9jYWwgdGVzdGluZyBJIHNlZSB0aGlzIEJVRyBzdGlsbCBmaXJlcywgYnV0IGlmIHdlIHdp
bGwgbGVhdmUKPiA+IG9sZCBmaXhlZCBidWdzIG9wZW4sIHdlIHdpbGwgbm90IGdldCBub3RpZmlj
YXRpb25zIGFib3V0IG5ldyBjcmFzaGVzLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9q
ZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
