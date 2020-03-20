Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D904D18D0B7
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 15:28:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85E2D871C8;
	Fri, 20 Mar 2020 14:28:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZZVfmhMSiSDn; Fri, 20 Mar 2020 14:28:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1F4E686CA6;
	Fri, 20 Mar 2020 14:28:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6A40E1BF383
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 14:28:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6509020446
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 14:28:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ibmge+wgoPYF for <devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 14:28:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 8792320346
 for <devel@linuxdriverproject.org>; Fri, 20 Mar 2020 14:28:00 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D11A32070A;
 Fri, 20 Mar 2020 14:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584714480;
 bh=ND8w5U92rYsYpwnEj1Y1CsPVj4C+W7Lwf2SrMjdJgoY=;
 h=Date:From:To:Cc:Subject:From;
 b=X2UM9tPoF3qOd9/+Fl+Mcuk6+v3fDhKKdUDAgj7wQfzzWbDVYCGCbOIZp4iN7SXJW
 AOVEv0/dnXghzER/2gSh6ze3ZpRmH/tK4weMTpvNN/WkRWAc+HV2OyXrKjPe+dKhT/
 GS/szgQ6ssM5FtAiIlry2HmhKoClkh4fPGK+XzWQ=
Date: Fri, 20 Mar 2020 15:27:58 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [GIT PULL] Staging/IIO driver fixes for 5.6-rc7
Message-ID: <20200320142758.GA760533@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@linuxdriverproject.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCBmODc4OGQ4NmFiMjhmNjFmN2I0NmVi
NmJlMzc1ZjhhNzI2NzgzNjM2OgoKICBMaW51eCA1LjYtcmMzICgyMDIwLTAyLTIzIDE2OjE3OjQy
IC0wODAwKQoKYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6CgogIGdpdDov
L2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9ncmVna2gvc3RhZ2luZy5n
aXQgdGFncy9zdGFnaW5nLTUuNi1yYzcKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byAx
NDgwMGRmNmEwMjBkMzg4NDdmZWM3N2FjNWE0M2RjMjIxZTVlZGZjOgoKICBNZXJnZSB0YWcgJ2lp
by1maXhlcy1mb3ItNS42YScgb2YgZ2l0Oi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L2ppYzIzL2lpbyBpbnRvIHN0YWdpbmctbGludXMgKDIwMjAtMDMtMTggMTE6MjA6
NDIgKzAxMDApCgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tClN0YWdpbmcvSUlPIGZpeGVzIGZvciA1LjYtcmM3CgpIZXJlIGFy
ZSBhIG51bWJlciBvZiBzbWFsbCBzdGFnaW5nIGFuZCBJSU8gZHJpdmVyIGZpeGVzIGZvciA1LjYt
cmM3CgpOb3RoaW5nIG1ham9yIGhlcmUsIGp1c3QgcmVzb2x1dGlvbnMgZm9yIHNvbWUgcmVwb3J0
ZWQgcHJvYmxlbXM6CgktIGlpbyBidWdmaXhlcyBmb3IgYSBudW1iZXIgb2YgZGlmZmVyZW50IGRy
aXZlcnMKCS0gZ3JleWJ1cyBsb29wYmFja190ZXN0IGZpeGVzCgktIHdmeCBkcml2ZXIgZml4ZXMK
CkFsbCBvZiB0aGVzZSBoYXZlIGJlZW4gaW4gbGludXgtbmV4dCB3aXRoIG5vIHJlcG9ydGVkIGlz
c3Vlcy4KClNpZ25lZC1vZmYtYnk6IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc+CgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCkFsZXhhbmRydSBUYWNoaWNpICgxKToKICAgICAgaWlvOiBh
Y2NlbDogYWR4bDM3MjogU2V0IGlpb19jaGFuIEJFCgpFdWdlbiBIcmlzdGV2ICgxKToKICAgICAg
aWlvOiBhZGM6IGF0OTEtc2FtYTVkMl9hZGM6IGZpeCBkaWZmZXJlbnRpYWwgY2hhbm5lbHMgaW4g
dHJpZ2dlcmVkIG1vZGUKCkZhYnJpY2UgR2FzbmllciAoMSk6CiAgICAgIGlpbzogdHJpZ2dlcjog
c3RtMzItdGltZXI6IGRpc2FibGUgbWFzdGVyIG1vZGUgd2hlbiBzdG9wcGluZwoKR3JlZyBLcm9h
aC1IYXJ0bWFuICgxKToKICAgICAgTWVyZ2UgdGFnICdpaW8tZml4ZXMtZm9yLTUuNmEnIG9mIGdp
dDovL2dpdC5rZXJuZWwub3JnLy4uLi9qaWMyMy9paW8gaW50byBzdGFnaW5nLWxpbnVzCgpKb2hh
biBIb3ZvbGQgKDMpOgogICAgICBzdGFnaW5nOiBncmV5YnVzOiBsb29wYmFja190ZXN0OiBmaXgg
cG9sbC1tYXNrIGJ1aWxkIGJyZWFrYWdlCiAgICAgIHN0YWdpbmc6IGdyZXlidXM6IGxvb3BiYWNr
X3Rlc3Q6IGZpeCBwb3RlbnRpYWwgcGF0aCB0cnVuY2F0aW9uCiAgICAgIHN0YWdpbmc6IGdyZXli
dXM6IGxvb3BiYWNrX3Rlc3Q6IGZpeCBwb3RlbnRpYWwgcGF0aCB0cnVuY2F0aW9ucwoKSsOpcsO0
bWUgUG91aWxsZXIgKDUpOgogICAgICBzdGFnaW5nOiB3Zng6IGZpeCB3YXJuaW5nIGFib3V0IGZy
ZWVpbmcgaW4tdXNlIG11dGV4IGR1cmluZyBkZXZpY2UgdW5yZWdpc3RlcgogICAgICBzdGFnaW5n
OiB3Zng6IGZpeCBsaW5lcyBlbmRpbmcgd2l0aCBhIGNvbW1hIGluc3RlYWQgb2YgYSBzZW1pY29s
b24KICAgICAgc3RhZ2luZzogd2Z4OiBtYWtlIHdhcm5pbmcgYWJvdXQgcGVuZGluZyBmcmFtZSBs
ZXNzIHNjYXJ5CiAgICAgIHN0YWdpbmc6IHdmeDogZml4IFJDVSB1c2FnZSBpbiB3Znhfam9pbl9m
aW5hbGl6ZSgpCiAgICAgIHN0YWdpbmc6IHdmeDogZml4IFJDVSB1c2FnZSBiZXR3ZWVuIGhpZl9q
b2luKCkgYW5kIGllZWU4MDIxMV9ic3NfZ2V0X2llKCkKCk1pY2hhZWwgU3RyYXViZSAoMSk6CiAg
ICAgIHN0YWdpbmc6IHJ0bDgxODhldTogQWRkIGRldmljZSBpZCBmb3IgTUVSQ1VTWVMgTVcxNTBV
UyB2MgoKT2xpdmllciBNb3lzYW4gKDEpOgogICAgICBpaW86IGFkYzogc3RtMzItZGZzZG06IGZp
eCBzbGVlcCBpbiBhdG9taWMgY29udGV4dAoKUGV0ciDFoHRldGlhciAoMSk6CiAgICAgIGlpbzog
Y2hlbWljYWw6IHNwczMwOiBmaXggbWlzc2luZyB0cmlnZ2VyZWQgYnVmZmVyIGRlcGVuZGVuY3kK
ClNhbXVlbCBUaGliYXVsdCAoMSk6CiAgICAgIHN0YWdpbmcvc3BlYWt1cDogZml4IGdldF93b3Jk
IG5vbi1zcGFjZSBsb29rLWFoZWFkCgpTdGVwaGFuIEdlcmhvbGQgKDEpOgogICAgICBpaW86IG1h
Z25ldG9tZXRlcjogYWs4OTc0OiBGaXggbmVnYXRpdmUgcmF3IHZhbHVlcyBpbiBzeXNmcwoKVG9t
YXMgTm92b3RueSAoMik6CiAgICAgIGlpbzogbGlnaHQ6IHZjbmw0MDAwOiB1cGRhdGUgc2FtcGxp
bmcgcGVyaW9kcyBmb3IgdmNubDQyMDAKICAgICAgaWlvOiBsaWdodDogdmNubDQwMDA6IHVwZGF0
ZSBzYW1wbGluZyBwZXJpb2RzIGZvciB2Y25sNDA0MAoKV2VuLWNoaWVuIEplc3NlIFN1bmcgKDEp
OgogICAgICBpaW86IHN0X3NlbnNvcnM6IHJlbWFwIFNNTzg4NDAgdG8gTElTMkRIMTIKCll1ZUhh
aWJpbmcgKDEpOgogICAgICBpaW86IHBpbmc6IHNldCBwYV9sYXNlcl9waW5nX2NmZyBpbiBvZl9w
aW5nX21hdGNoCgogZHJpdmVycy9paW8vYWNjZWwvYWR4bDM3Mi5jICAgICAgICAgICAgICAgICAg
IHwgIDEgKwogZHJpdmVycy9paW8vYWNjZWwvc3RfYWNjZWxfaTJjLmMgICAgICAgICAgICAgIHwg
IDIgKy0KIGRyaXZlcnMvaWlvL2FkYy9hdDkxLXNhbWE1ZDJfYWRjLmMgICAgICAgICAgICB8IDE1
ICsrKysrKysrKysKIGRyaXZlcnMvaWlvL2FkYy9zdG0zMi1kZnNkbS1hZGMuYyAgICAgICAgICAg
ICB8IDQzICsrKysrKystLS0tLS0tLS0tLS0tLS0tLS0tLQogZHJpdmVycy9paW8vY2hlbWljYWwv
S2NvbmZpZyAgICAgICAgICAgICAgICAgIHwgIDIgKysKIGRyaXZlcnMvaWlvL2xpZ2h0L3Zjbmw0
MDAwLmMgICAgICAgICAgICAgICAgICB8IDE1ICsrKysrLS0tLS0KIGRyaXZlcnMvaWlvL21hZ25l
dG9tZXRlci9hazg5NzQuYyAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL2lpby9wcm94aW1p
dHkvcGluZy5jICAgICAgICAgICAgICAgICAgfCAgMiArLQogZHJpdmVycy9paW8vdHJpZ2dlci9z
dG0zMi10aW1lci10cmlnZ2VyLmMgICAgIHwgMTEgKysrKystLQogZHJpdmVycy9zdGFnaW5nL2dy
ZXlidXMvdG9vbHMvbG9vcGJhY2tfdGVzdC5jIHwgMjEgKysrKysrLS0tLS0tLQogZHJpdmVycy9z
dGFnaW5nL3J0bDgxODhldS9vc19kZXAvdXNiX2ludGYuYyAgIHwgIDEgKwogZHJpdmVycy9zdGFn
aW5nL3NwZWFrdXAvbWFpbi5jICAgICAgICAgICAgICAgIHwgIDIgKy0KIGRyaXZlcnMvc3RhZ2lu
Zy93ZngvaGlmX3R4LmMgICAgICAgICAgICAgICAgICB8IDE1ICsrKysrLS0tLS0KIGRyaXZlcnMv
c3RhZ2luZy93ZngvaGlmX3R4LmggICAgICAgICAgICAgICAgICB8ICAyICstCiBkcml2ZXJzL3N0
YWdpbmcvd2Z4L2hpZl90eF9taWIuaCAgICAgICAgICAgICAgfCAxNSArKysrKystLS0tCiBkcml2
ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jICAgICAgICAgICAgICAgICAgICAgfCAyNSArKysrKysrKyst
LS0tLS0tCiAxNiBmaWxlcyBjaGFuZ2VkLCA5NSBpbnNlcnRpb25zKCspLCA3OSBkZWxldGlvbnMo
LSkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZGV2ZWwg
bWFpbGluZyBsaXN0CmRldmVsQGxpbnV4ZHJpdmVycHJvamVjdC5vcmcKaHR0cDovL2RyaXZlcmRl
di5saW51eGRyaXZlcnByb2plY3Qub3JnL21haWxtYW4vbGlzdGluZm8vZHJpdmVyZGV2LWRldmVs
Cg==
