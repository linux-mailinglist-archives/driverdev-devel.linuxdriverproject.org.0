Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4AB289178
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Oct 2020 20:52:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 367A987898;
	Fri,  9 Oct 2020 18:52:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sb3-mXaKYCuc; Fri,  9 Oct 2020 18:52:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E7FF88787D;
	Fri,  9 Oct 2020 18:52:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B781F1BF27C
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 18:52:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B4977870A1
 for <devel@linuxdriverproject.org>; Fri,  9 Oct 2020 18:52:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aIDybLzAR4zD for <devel@linuxdriverproject.org>;
 Fri,  9 Oct 2020 18:52:53 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from m42-4.mailgun.net (m42-4.mailgun.net [69.72.42.4])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DC3178708D
 for <devel@driverdev.osuosl.org>; Fri,  9 Oct 2020 18:52:52 +0000 (UTC)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1602269572; h=Content-Transfer-Encoding: Content-Type:
 MIME-Version: Message-ID: In-Reply-To: Date: References: Subject: Cc:
 To: From: Sender; bh=C2ixXtJpszCvMiXVMMBC/Lmu1IAK2pnWzYoTtv0TqiQ=;
 b=a3eGZkWcnIeFVFl7MGinFWz3rD8oRcjX/nEH1rf9d/Lr1vAxzATIgGBv1CLiZQ55JHbQunrv
 palZ39XJEiHVbysDfn6eCss4mMHoisC/ij+iTagKIN/t/dt6xR0iZaMiQNVF4B98u1AbzY+0
 oUWraMsQg9KCEPCYugLYQhRLqG8=
X-Mailgun-Sending-Ip: 69.72.42.4
X-Mailgun-Sid: WyI2ZDRhNSIsICJkZXZlbEBkcml2ZXJkZXYub3N1b3NsLm9yZyIsICJiZTllNGEiXQ==
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n05.prod.us-west-2.postgun.com with SMTP id
 5f80b18342f9861fb1bba6fa (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 09 Oct 2020 18:52:51
 GMT
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id DC0DAC433FE; Fri,  9 Oct 2020 18:52:51 +0000 (UTC)
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: kvalo)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 475DEC433C9;
 Fri,  9 Oct 2020 18:52:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 475DEC433C9
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Jerome Pouiller <Jerome.Pouiller@silabs.com>
Subject: Re: [PATCH 3/8] staging: wfx: standardize the error when vif does not
 exist
References: <20201009171307.864608-1-Jerome.Pouiller@silabs.com>
 <20201009171307.864608-4-Jerome.Pouiller@silabs.com>
Date: Fri, 09 Oct 2020 21:52:47 +0300
In-Reply-To: <20201009171307.864608-4-Jerome.Pouiller@silabs.com> (Jerome
 Pouiller's message of "Fri, 9 Oct 2020 19:13:02 +0200")
Message-ID: <87zh4vz0xs.fsf@codeaurora.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
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
Cc: devel@driverdev.osuosl.org, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "David S . Miller" <davem@davemloft.net>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SmVyb21lIFBvdWlsbGVyIDxKZXJvbWUuUG91aWxsZXJAc2lsYWJzLmNvbT4gd3JpdGVzOgoKPiBG
cm9tOiBKw6lyw7RtZSBQb3VpbGxlciA8amVyb21lLnBvdWlsbGVyQHNpbGFicy5jb20+Cj4KPiBT
bWF0Y2ggY29tcGxhaW5zOgo+Cj4gICAgZHJpdmVycy9zdGFnaW5nL3dmeC9oaWZfcnguYzoxNzcg
aGlmX3NjYW5fY29tcGxldGVfaW5kaWNhdGlvbigpIHdhcm46IHBvdGVudGlhbCBOVUxMIHBhcmFt
ZXRlciBkZXJlZmVyZW5jZSAnd3ZpZicKPiAgICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHgu
Yzo1NzYgd2Z4X2ZsdXNoKCkgd2FybjogcG90ZW50aWFsIE5VTEwgcGFyYW1ldGVyIGRlcmVmZXJl
bmNlICd3dmlmJwo+Cj4gSW5kZWVkLCBpZiB0aGUgdmlmIGlkIHJldHVybmVkIGJ5IHRoZSBkZXZp
Y2UgZG9lcyBub3QgZXhpc3QgYW55bW9yZSwKPiB3ZGV2X3RvX3d2aWYoKSBjb3VsZCByZXR1cm4g
TlVMTC4KPgo+IEluIGFkZCwgdGhlIGVycm9yIGlzIG5vdCBoYW5kbGVkIHVuaWZvcm1seSBpbiB0
aGUgY29kZSwgc29tZXRpbWUgYQo+IFdBUk4oKSBpcyBkaXNwbGF5ZWQgYnV0IGNvZGUgY29udGlu
dWUsIHNvbWV0aW1lIGEgZGV2X3dhcm4oKSBpcwo+IGRpc3BsYXllZCwgc29tZXRpbWUgaXQgaXMg
anVzdCBub3QgdGVzdGVkLCAuLi4KPgo+IFRoaXMgcGF0Y2ggc3RhbmRhcmRpemUgdGhhdC4KPgo+
IFJlcG9ydGVkLWJ5OiBEYW4gQ2FycGVudGVyIDxkYW4uY2FycGVudGVyQG9yYWNsZS5jb20+Cj4g
U2lnbmVkLW9mZi1ieTogSsOpcsO0bWUgUG91aWxsZXIgPGplcm9tZS5wb3VpbGxlckBzaWxhYnMu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYyB8ICA1ICsrKystCj4g
IGRyaXZlcnMvc3RhZ2luZy93ZngvaGlmX3J4LmMgIHwgMzQgKysrKysrKysrKysrKysrKysrKysr
KysrLS0tLS0tLS0tLQo+ICBkcml2ZXJzL3N0YWdpbmcvd2Z4L3N0YS5jICAgICB8ICA0ICsrKysK
PiAgMyBmaWxlcyBjaGFuZ2VkLCAzMiBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2Z4L2RhdGFfdHguYyBiL2RyaXZlcnMvc3Rh
Z2luZy93ZngvZGF0YV90eC5jCj4gaW5kZXggYjRkNWRkM2QyZDIzLi44ZGIwYmUwOGRhZjggMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dmeC9kYXRhX3R4LmMKPiArKysgYi9kcml2ZXJz
L3N0YWdpbmcvd2Z4L2RhdGFfdHguYwo+IEBAIC00MzEsNyArNDMxLDEwIEBAIHN0YXRpYyB2b2lk
IHdmeF9za2JfZHRvcihzdHJ1Y3Qgd2Z4X3ZpZiAqd3ZpZiwgc3RydWN0IHNrX2J1ZmYgKnNrYikK
PiAgCQkJICAgICAgc2l6ZW9mKHN0cnVjdCBoaWZfcmVxX3R4KSArCj4gIAkJCSAgICAgIHJlcS0+
ZmNfb2Zmc2V0Owo+ICAKPiAtCVdBUk5fT04oIXd2aWYpOwo+ICsJaWYgKCF3dmlmKSB7Cj4gKwkJ
cHJfd2FybigiJXM6IHZpZiBhc3NvY2lhdGVkIHdpdGggdGhlIHNrYiBkb2VzIG5vdCBleGlzdCBh
bnltb3JlXG4iLCBfX2Z1bmNfXyk7Cj4gKwkJcmV0dXJuOwo+ICsJfQoKSSdtIG5vdCByZWFsbHkg
YSBmYW4gb2YgdXNpbmcgZnVuY3Rpb24gbmFtZXMgaW4gd2FybmluZyBvciBlcnJvcgptZXNzYWdl
cyBhcyBpdCBjbHV0dGVycyB0aGUgbG9nLiBJbiBkZWJ1ZyBtZXNzYWdlcyBJIHRoaW5rIHRoZXkg
YXJlIG9rLgoKLS0gCmh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC13
aXJlbGVzcy9saXN0LwoKaHR0cHM6Ly93aXJlbGVzcy53aWtpLmtlcm5lbC5vcmcvZW4vZGV2ZWxv
cGVycy9kb2N1bWVudGF0aW9uL3N1Ym1pdHRpbmdwYXRjaGVzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZlbEBsaW51
eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9qZWN0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
