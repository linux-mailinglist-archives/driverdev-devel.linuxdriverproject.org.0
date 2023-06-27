Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AA72973FCE0
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Jun 2023 15:29:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4734761400;
	Tue, 27 Jun 2023 13:29:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4734761400
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gZ4heEeuXnrj; Tue, 27 Jun 2023 13:29:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FB74613FD;
	Tue, 27 Jun 2023 13:29:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FB74613FD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B034F1BF841
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 13:29:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8A2F480A86
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 13:29:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A2F480A86
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3AywufSR1LxO for <devel@linuxdriverproject.org>;
 Tue, 27 Jun 2023 13:29:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D5F6280A5F
Received: from mtk0.wrenchgroup.com (unknown [74.201.28.73])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D5F6280A5F
 for <devel@linuxdriverproject.org>; Tue, 27 Jun 2023 13:29:45 +0000 (UTC)
From: dorisgomo4@gmail.com
To: devel@linuxdriverproject.org
Date: 27 Jun 2023 09:29:37 -0400
Message-ID: <20230627092936.5F601ED4C73BD13F@gmail.com>
MIME-Version: 1.0
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
Reply-To: dorisgomo4@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RGVhciBGcmllbmQsCgpNeSBOYW1lIGlzIE1pc3MgRG9yaXMgR29tbyBmcm9tIENvdGUgZCdJdm9p
cmUsIEknbSAxNiB5ZWFycyBvbGQKb3JpZ2luYXRlZCBmcm9tIEJvbmRvdWtvdSwgQ8O0dGUgIGQn
SXZvaXJlIC4gSSBiZWxpZXZlIHRoYXQgaXQgaXMgCmJldHRlciB3ZSBrbm93IGVhY2ggb3RoZXIg
YmV0dGVyIGJlY2F1c2UgSSBiZWxpZXZlIHRoYXQgYW55IGdvb2QgCnJlbGF0aW9uc2hpcCB3aWxs
IG9ubHkgbGFzdCBpZgppdCBpcyBidWlsdCBvbiB0cnVzdCBhbmQgbXV0dWFsIHVuZGVyc3RhbmRp
bmcuCgpQbGVhc2UgSSB3YW50IHlvdSB0byByZWFkIHRoaXMgbGV0dGVyIHZlcnkgY2FyZWZ1bGx5
IGFuZCBJIG11c3QKYXBvbG9naXplIGZvciBiYXJnaW5nIHRoaXMgbWVzc2FnZSBpbnRvIHlvdXIg
bWFpbGJveCB3aXRob3V0IGFueQpmb3JtYWwgaW50cm9kdWN0aW9uIGR1ZSB0byB0aGUgdXJnZW5j
eSBhbmQgY29uZmlkZW50aWFsaXR5IG9mIAp0aGlzIGlzc3VlLgoKSSBsb3N0IG15IHBhcmVudHMg
dGhyb3VnaCB0aGUgY3Jpc2VzIHdhciBsYXN0IHRpbWUgaW4gQ29uZ28gUkRQLCAKaGUgaXMgYSBn
b2xkIG1pbmVyLCBteSB1bmNsZSBjb25zcGlyZWQgYW5kIHNvbGQgbXkgZmF0aGVyJ3MgCnByb3Bl
cnRpZXMgYW5kIGxlZnQgbm90aGluZyBmb3IgbWUsIG9uIGEgZmFpdGhmdWwgbW9ybmluZyBJIApv
cGVuZWQgbXkgbGF0ZSBmYXRoZXIncyByb29tIHdoaWNoIEkgc2F3IGEgYnJpZWZjYXNlIGFuZCBJ
IG9wZW5lZCAKaXQgdGhlcmUgSSBmb3VuZCBkb2N1bWVudHMgaW4gd2hpY2ggaW5kaWNhdGVkIHRo
YXQgbXkgbGF0ZQpmYXRoZXIgZGVwb3NpdGVkIGFtb3VudCBvZiBtb25leSBpbiBvbmUgb2YgdGhl
IGJhbmsgaW4gTG9uZG9uIGluCm15IG5hbWUgYXMgaGlzIG5leHQgb2Yga2luLgoKSSBoYXZlIGNv
bnRhY3RlZCB0aGUgYmFuayBieSBjYWxsIGFuZCBieSBlbWFpbCB0byB3aXRoZHJhdyB0aGUgCm1v
bmV5IHNvIHRoYXQgSSBjYW4gc3RhcnQgYSBiZXR0ZXIgbGlmZSBhbmQgdGFrZSBjYXJlIG9mIG15
c2VsZi4gIApUaGUgYnJhbmNoIG1hbmFnZXIgb2YgdGhlIGJhbmsgd2hvbSBJIGVtYWlsZWQgIHRv
bGQgbWUgdGhhdCBteSAKZmF0aGVyJ3MgaW5zdHJ1Y3Rpb24gdG8gdGhlIGJhbmsgd2FzIHRoYXQg
dGhlIG1vbmV5IHNob3VsZCBiZSAKcmVsZWFzZWQgdG8gbWUgb25seSB3aGVuIEkgYW0gbWFycmll
ZCBvciBpZiBJIHByZXNlbnQgYSB0cnVzdGVlIAp3aG8gd2lsbCBoZWxwIG1lIGFuZCBpbnZlc3Qg
dGhlIG1vbmV5IG92ZXJzZWFzLgoKSSBoYXZlIGNob3NlbiB0byBjb250YWN0IHlvdSBhbmQgSSBi
ZWxpZXZlIHRoYXQgeW91IHdpbGwgbm90IApiZXRyYXkgbXkKdHJ1c3Qgb24geW91LCB0aG91Z2gg
eW91IG1heSB3b25kZXIgd2h5IEkgc28gc29vbiByZXZlYWxlZCBteXNlbGYgCnRvCnlvdSB3aXRo
b3V0IGtub3dpbmcgeW91IHdlbGwsIEkgYW0gY29udmluY2UgdGhhdCB5b3UgYXJlIHRoZSByZWFs
CnBlcnNvbiB0byBoZWxwIG1lIG91dC4gSSB3aWxsIGRpc2Nsb3NlIG11Y2ggdG8geW91IGlmIHlv
dSBjYW4gCmFzc2lzdAptZSB0byByZWxvY2F0ZSB0byB5b3VyIGNvdW50cnkgYmVjYXVzZSBteSB3
aWNrZWQgdW5jbGUgaGFzIAp0aHJlYXRlbmVkCnRvIGFzc2Fzc2luYXRlIG1lLiBUaGUgYW1vdW50
IGludm9sdmVkIGlzICQxMC41IE1pbGxpb24gRG9sbGFycyAKd2l0aApzb21lIGtpbG9zIG9mIEdv
bGQgQmFycyBhbmQgSSBoYXZlIGNvbmZpcm1lZCBmcm9tIHRoZSBiYW5rIGluIApMb25kb24gd2hl
cmUgdGhlIEdvbGQgQkFSUyB3ZXJlIGRlcG9zaXRlZC4gWW91IHdpbGwgYWxzbyBoZWxwIG1lIAp0
byBwbGFjZQp0aGUgbW9uZXkgaW4gYSBtb3JlIHByb2ZpdGFibGUgYnVzaW5lc3MgdmVudHVyZSBp
biB5b3VyIGNvdW50cnkuCgpIb3dldmVyIHlvdSB3aWxsIGhlbHAgbWUgYnkgcmVjb21tZW5kaW5n
IGEgbmljZSB1bml2ZXJzaXR5IGluIAp5b3VyCmNvdW50cnkgc28gdGhhdCBJIGNhbiBjb21wbGV0
ZSBteSBlZHVjYXRpb24sIGl0IGlzIG15IGludGVudGlvbiAKdG8KY29tcGVuc2F0ZSB5b3Ugd2l0
aCAzMCUgZnJvbSB0aGUgdG90YWwgbW9uZXkgZm9yIHlvdXIgbm9ibGUgCmFzc2lzdGFuY2UKYW5k
IHRoZSBiYWxhbmNlIHNoYWxsIGJlIG15IGNhcGl0YWwgZm9yIGVzdGFibGlzaG1lbnQgYWZ0ZXIg
bXkgCnNjaG9vbC4KCgpJbiByZWNlaXB0IG9mIHlvdXIgYmVsb3cgaW5mb3JtYXRpb27igJlzLCBJ
IHdpbGwgc3VtbWl0IGEgbGV0dGVyIG9mCmludHJvZHVjdGlvbi9yZWNvbW1lbmRhdGlvbiB0byB0
aGUgYmFuayBpbW1lZGlhdGVseSBpbiB5b3VyIG5hbWUgCmFzIG15CnRydXN0ZWUuIFBsZWFzZSBy
ZWFkIHRoaXMgcHJvcG9zYWwgYXMgdXJnZW50IGFuZCBjb250YWN0IG1lIHdpdGggCnlvdXIKaW5m
b3JtYXRpb24gYmVsb3c6IGhlcmUgaXMgbXkgcHJpdmF0ZSBlbWFpbCBhZGRyZXNzLgooIGRvcmlz
Z29tbzRAZ21haWwuY29tICkKCjEuIE5hbWUgSW4gZnVsbDouLi4uLi4uLi4KMi4gQWRkcmVzczou
Li4uLi4uLi4uLi4uLgozLiBOYXRpb25hbGl0eTouLi4uLi4uLi4uCjQuIEFnZTouLi4uLi4uLi4K
NS4gU2V4Li4uLi4uLi4uLgo2LiBPY2N1cGF0aW9uOiAuLi4uLi4uLi4uCjcuIE1hcml0YWwgU3Rh
dHVzOi4uLi4uLi4KOC4gUGhvbmUuLi4uLi4uLi4KCllvdXJzIEZhaXRoZnVsbHksCgpNaXNzIERv
cmlzIEdvbW8uCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9k
cml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRl
di1kZXZlbAo=
