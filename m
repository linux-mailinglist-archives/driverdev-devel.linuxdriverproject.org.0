Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F124021AFC6
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Jul 2020 08:54:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1A46D88426;
	Fri, 10 Jul 2020 06:54:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ShBCn55xgV3F; Fri, 10 Jul 2020 06:54:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0291B88307;
	Fri, 10 Jul 2020 06:54:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 341771BF333
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 06:54:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3138488550
 for <devel@linuxdriverproject.org>; Fri, 10 Jul 2020 06:54:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DUHDNRkNnCBK for <devel@linuxdriverproject.org>;
 Fri, 10 Jul 2020 06:54:13 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8C7B18851B
 for <devel@driverdev.osuosl.org>; Fri, 10 Jul 2020 06:54:13 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6A1820672;
 Fri, 10 Jul 2020 06:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594364053;
 bh=hAo1d5SeZ+9Ir6Berd242hyxR+xiYbCPkvLNBYYxLg8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UgGTpYG0ROo7VSeWVfg/qkrMjJE89H59E7dT58DR/GdnswkSOq7tv08qo+LRkPwOT
 b1Jldmb6DLvkB6MCVK0LyI/HC5wHnl2h8CTGFwKZezK3G6CQBkpV5w1O22+ttWD3YO
 TMRbZhRkc90cYDrSI1Cq3t014Rj5HorMrCzJ9FwQ=
Date: Fri, 10 Jul 2020 08:54:18 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jann Horn <jannh@google.com>
Subject: Re: [PATCH resend] binder: Prevent context manager from incrementing
 ref 0
Message-ID: <20200710065418.GA1143105@kroah.com>
References: <20200709223948.1051613-1-jannh@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200709223948.1051613-1-jannh@google.com>
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
Cc: devel@driverdev.osuosl.org, Todd Kjos <tkjos@android.com>,
 Mattias Nissler <mnissler@google.com>, linux-kernel@vger.kernel.org,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Martijn Coenen <maco@android.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

T24gRnJpLCBKdWwgMTAsIDIwMjAgYXQgMTI6Mzk6NDhBTSArMDIwMCwgSmFubiBIb3JuIHdyb3Rl
Ogo+IEJpbmRlciBpcyBkZXNpZ25lZCBzdWNoIHRoYXQgYSBiaW5kZXJfcHJvYyBuZXZlciBoYXMg
cmVmZXJlbmNlcyB0bwo+IGl0c2VsZi4gSWYgdGhpcyBydWxlIGlzIHZpb2xhdGVkLCBtZW1vcnkg
Y29ycnVwdGlvbiBjYW4gb2NjdXIgd2hlbiBhCj4gcHJvY2VzcyBzZW5kcyBhIHRyYW5zYWN0aW9u
IHRvIGl0c2VsZjsgc2VlIGUuZy4KPiA8aHR0cHM6Ly9zeXprYWxsZXIuYXBwc3BvdC5jb20vYnVn
P2V4dGlkPTA5ZTA1YWJhMDY3MjNhOTRkNDNkPi4KPiAKPiBUaGVyZSBpcyBhIHJlbWFpbmluZyBl
ZGdlY2FzZSB0aHJvdWdoIHdoaWNoIHN1Y2ggYSB0cmFuc2FjdGlvbi10by1zZWxmCj4gY2FuIHN0
aWxsIG9jY3VyIGZyb20gdGhlIGNvbnRleHQgb2YgYSB0YXNrIHdpdGggQklOREVSX1NFVF9DT05U
RVhUX01HUgo+IGFjY2VzczoKPiAKPiAgLSB0YXNrIEEgb3BlbnMgL2Rldi9iaW5kZXIgdHdpY2Us
IGNyZWF0aW5nIGJpbmRlcl9wcm9jIGluc3RhbmNlcyBQMQo+ICAgIGFuZCBQMgo+ICAtIFAxIGJl
Y29tZXMgY29udGV4dCBtYW5hZ2VyCj4gIC0gUDIgY2FsbHMgQUNRVUlSRSBvbiB0aGUgbWFnaWMg
aGFuZGxlIDAsIGFsbG9jYXRpbmcgaW5kZXggMCBpbiBpdHMKPiAgICBoYW5kbGUgdGFibGUKPiAg
LSBQMSBkaWVzIChieSBjbG9zaW5nIHRoZSAvZGV2L2JpbmRlciBmZCBhbmQgd2FpdGluZyBhIGJp
dCkKPiAgLSBQMiBiZWNvbWVzIGNvbnRleHQgbWFuYWdlcgo+ICAtIFAyIGNhbGxzIEFDUVVJUkUg
b24gdGhlIG1hZ2ljIGhhbmRsZSAwLCBhbGxvY2F0aW5nIGluZGV4IDEgaW4gaXRzCj4gICAgaGFu
ZGxlIHRhYmxlCj4gICAgW3RoaXMgdHJpZ2dlcnMgYSB3YXJuaW5nOiAiYmluZGVyOiAxOTc0OjE5
NzQgdHJpZWQgdG8gYWNxdWlyZQo+ICAgIHJlZmVyZW5jZSB0byBkZXNjIDAsIGdvdCAxIGluc3Rl
YWQiXQo+ICAtIHRhc2sgQiBvcGVucyAvZGV2L2JpbmRlciBvbmNlLCBjcmVhdGluZyBiaW5kZXJf
cHJvYyBpbnN0YW5jZSBQMwo+ICAtIFAzIGNhbGxzIFAyICh2aWEgbWFnaWMgaGFuZGxlIDApIHdp
dGggKHZvaWQqKTEgYXMgYXJndW1lbnQgKHR3by13YXkKPiAgICB0cmFuc2FjdGlvbikKPiAgLSBQ
MiByZWNlaXZlcyB0aGUgaGFuZGxlIGFuZCB1c2VzIGl0IHRvIGNhbGwgUDMgKHR3by13YXkgdHJh
bnNhY3Rpb24pCj4gIC0gUDMgY2FsbHMgUDIgKHZpYSBtYWdpYyBoYW5kbGUgMCkgKHR3by13YXkg
dHJhbnNhY3Rpb24pCj4gIC0gUDIgY2FsbHMgUDIgKHZpYSBoYW5kbGUgMSkgKHR3by13YXkgdHJh
bnNhY3Rpb24pCj4gCj4gQW5kIHRoZW4sIGlmIFAyIGRvZXMgKk5PVCogYWNjZXB0IHRoZSBpbmNv
bWluZyB0cmFuc2FjdGlvbiB3b3JrLCBidXQKPiBpbnN0ZWFkIGNsb3NlcyB0aGUgYmluZGVyIGZk
LCB3ZSBnZXQgYSBjcmFzaC4KPiAKPiBTb2x2ZSBpdCBieSBwcmV2ZW50aW5nIHRoZSBjb250ZXh0
IG1hbmFnZXIgZnJvbSB1c2luZyBBQ1FVSVJFIG9uIHJlZiAwLgo+IFRoZXJlIHNob3VsZG4ndCBi
ZSBhbnkgbGVnaXRpbWF0ZSByZWFzb24gZm9yIHRoZSBjb250ZXh0IG1hbmFnZXIgdG8gZG8KPiB0
aGF0Lgo+IAo+IEFkZGl0aW9uYWxseSwgcHJpbnQgYSB3YXJuaW5nIGlmIHNvbWVvbmUgbWFuYWdl
cyB0byBmaW5kIGFub3RoZXIgd2F5IHRvCj4gdHJpZ2dlciBhIHRyYW5zYWN0aW9uLXRvLXNlbGYg
YnVnIGluIHRoZSBmdXR1cmUuCj4gCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBGaXhl
czogNDU3YjlhNmYwOWYwICgiU3RhZ2luZzogYW5kcm9pZDogYWRkIGJpbmRlciBkcml2ZXIiKQo+
IFNpZ25lZC1vZmYtYnk6IEphbm4gSG9ybiA8amFubmhAZ29vZ2xlLmNvbT4KPiBBY2tlZC1ieTog
VG9kZCBLam9zIDx0a2pvc0Bnb29nbGUuY29tPgo+IC0tLQo+IHNlbmRpbmcgYWdhaW4gYmVjYXVz
ZSBJIGZvcmdvdCB0byBDQyBMS01MIHRoZSBmaXJzdCB0aW1lLi4uIHNvcnJ5IGFib3V0Cj4gdGhl
IHNwYW0uCgpUaGlzIHNwaXRzIG91dCBhIGJ1bmNoIG9mIHdhcm5pbmdzIHdoZW4gYnVpbHQsIGhv
dyBkaWQgaXQgd29yayBvbiB5b3VyCmVuZD8KCmRyaXZlcnMvYW5kcm9pZC9iaW5kZXIuYzogSW4g
ZnVuY3Rpb24g4oCYYmluZGVyX3RocmVhZF93cml0ZeKAmToKLi9pbmNsdWRlL2xpbnV4L2tlcm5f
bGV2ZWxzLmg6NToxODogd2FybmluZzogZm9ybWF0IOKAmCVk4oCZIGV4cGVjdHMgYSBtYXRjaGlu
ZyDigJhpbnTigJkgYXJndW1lbnQgWy1XZm9ybWF0PV0KICAgIDUgfCAjZGVmaW5lIEtFUk5fU09I
ICJcMDAxIiAgLyogQVNDSUkgU3RhcnQgT2YgSGVhZGVyICovCiAgICAgIHwgICAgICAgICAgICAg
ICAgICBefn5+fn4KLi9pbmNsdWRlL2xpbnV4L3ByaW50ay5oOjUwNzoxMDogbm90ZTogaW4gZGVm
aW5pdGlvbiBvZiBtYWNybyDigJhwcmludGtfcmF0ZWxpbWl0ZWTigJkKICA1MDcgfCAgIHByaW50
ayhmbXQsICMjX19WQV9BUkdTX18pOyAgICBcCiAgICAgIHwgICAgICAgICAgXn5+Ci4vaW5jbHVk
ZS9saW51eC9rZXJuX2xldmVscy5oOjE0OjE5OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g
4oCYS0VSTl9TT0jigJkKICAgMTQgfCAjZGVmaW5lIEtFUk5fSU5GTyBLRVJOX1NPSCAiNiIgLyog
aW5mb3JtYXRpb25hbCAqLwogICAgICB8ICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+Ci4vaW5j
bHVkZS9saW51eC9wcmludGsuaDo1Mjc6MjE6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDi
gJhLRVJOX0lORk/igJkKICA1MjcgfCAgcHJpbnRrX3JhdGVsaW1pdGVkKEtFUk5fSU5GTyBwcl9m
bXQoZm10KSwgIyNfX1ZBX0FSR1NfXykKICAgICAgfCAgICAgICAgICAgICAgICAgICAgIF5+fn5+
fn5+fgpkcml2ZXJzL2FuZHJvaWQvYmluZGVyLmM6MTQ3OjQ6IG5vdGU6IGluIGV4cGFuc2lvbiBv
ZiBtYWNybyDigJhwcl9pbmZvX3JhdGVsaW1pdGVk4oCZCiAgMTQ3IHwgICAgcHJfaW5mb19yYXRl
bGltaXRlZCh4KTsgXAogICAgICB8ICAgIF5+fn5+fn5+fn5+fn5+fn5+fn4KZHJpdmVycy9hbmRy
b2lkL2JpbmRlci5jOjM2NDY6Nzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmGJpbmRl
cl91c2VyX2Vycm9y4oCZCiAzNjQ2IHwgICAgICAgYmluZGVyX3VzZXJfZXJyb3IoIiVkOiVkIGNv
bnRleHQgbWFuYWdlciB0cmllZCB0byBhY3F1aXJlIGRlc2MgMFxuIik7CiAgICAgIHwgICAgICAg
Xn5+fn5+fn5+fn5+fn5+fn4KLi9pbmNsdWRlL2xpbnV4L2tlcm5fbGV2ZWxzLmg6NToxODogd2Fy
bmluZzogZm9ybWF0IOKAmCVk4oCZIGV4cGVjdHMgYSBtYXRjaGluZyDigJhpbnTigJkgYXJndW1l
bnQgWy1XZm9ybWF0PV0KICAgIDUgfCAjZGVmaW5lIEtFUk5fU09IICJcMDAxIiAgLyogQVNDSUkg
U3RhcnQgT2YgSGVhZGVyICovCiAgICAgIHwgICAgICAgICAgICAgICAgICBefn5+fn4KLi9pbmNs
dWRlL2xpbnV4L3ByaW50ay5oOjUwNzoxMDogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDi
gJhwcmludGtfcmF0ZWxpbWl0ZWTigJkKICA1MDcgfCAgIHByaW50ayhmbXQsICMjX19WQV9BUkdT
X18pOyAgICBcCiAgICAgIHwgICAgICAgICAgXn5+Ci4vaW5jbHVkZS9saW51eC9rZXJuX2xldmVs
cy5oOjE0OjE5OiBub3RlOiBpbiBleHBhbnNpb24gb2YgbWFjcm8g4oCYS0VSTl9TT0jigJkKICAg
MTQgfCAjZGVmaW5lIEtFUk5fSU5GTyBLRVJOX1NPSCAiNiIgLyogaW5mb3JtYXRpb25hbCAqLwog
ICAgICB8ICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+Ci4vaW5jbHVkZS9saW51eC9wcmludGsu
aDo1Mjc6MjE6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhLRVJOX0lORk/igJkKICA1
MjcgfCAgcHJpbnRrX3JhdGVsaW1pdGVkKEtFUk5fSU5GTyBwcl9mbXQoZm10KSwgIyNfX1ZBX0FS
R1NfXykKICAgICAgfCAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fgpkcml2ZXJzL2FuZHJv
aWQvYmluZGVyLmM6MTQ3OjQ6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhwcl9pbmZv
X3JhdGVsaW1pdGVk4oCZCiAgMTQ3IHwgICAgcHJfaW5mb19yYXRlbGltaXRlZCh4KTsgXAogICAg
ICB8ICAgIF5+fn5+fn5+fn5+fn5+fn5+fn4KZHJpdmVycy9hbmRyb2lkL2JpbmRlci5jOjM2NDY6
Nzogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmGJpbmRlcl91c2VyX2Vycm9y4oCZCiAz
NjQ2IHwgICAgICAgYmluZGVyX3VzZXJfZXJyb3IoIiVkOiVkIGNvbnRleHQgbWFuYWdlciB0cmll
ZCB0byBhY3F1aXJlIGRlc2MgMFxuIik7CiAgICAgIHwgICAgICAgXn5+fn5+fn5+fn5+fn5+fn4K
Cgp0aGFua3MsCgpncmVnIGstaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9y
ZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5m
by9kcml2ZXJkZXYtZGV2ZWwK
