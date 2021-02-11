Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 885513189A4
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Feb 2021 12:41:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 930DA873AB;
	Thu, 11 Feb 2021 11:41:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r7OTo3HrOIhB; Thu, 11 Feb 2021 11:41:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 06EA287016;
	Thu, 11 Feb 2021 11:41:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 985351BF3EB
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:41:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 92D2C6F477
 for <devel@linuxdriverproject.org>; Thu, 11 Feb 2021 11:41:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NQUsUEY3exIi for <devel@linuxdriverproject.org>;
 Thu, 11 Feb 2021 11:41:25 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 4C2266F4E1; Thu, 11 Feb 2021 11:41:25 +0000 (UTC)
X-Greylist: delayed 00:22:34 by SQLgrey-1.8.0
Received: from gateway24.websitewelcome.com (gateway24.websitewelcome.com
 [192.185.51.228])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2BF796F477
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 11:41:22 +0000 (UTC)
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
 by gateway24.websitewelcome.com (Postfix) with ESMTP id E69A327FF
 for <devel@driverdev.osuosl.org>; Thu, 11 Feb 2021 05:17:20 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id A9yKlbNsTsvw9A9yKlfD7V; Thu, 11 Feb 2021 05:17:20 -0600
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GxhhtnrybzAfVIFZ8rGRvENgL+xpJWhXir7xsiZlf8Y=; b=wt3V1udJJ5TYy02kEGAvDw8rrf
 rhUTHS4x53k2htdQg7ZZs1Xf6OxMMYObUiwCrQvxEIppSPe9UWl24O3aZy3yZIQIZW6DTAwt0Cj2z
 2BDDWpzccUd9G1M5mjW5gDF7HawRYaeeld1IuvRevs0AkwPgef5f5F2OtJL3VXjztvNBJKl7HssoV
 NCcqzzbmcLgnbJf6jC4NIEuM9m5/wYt1zCcChIrXgUMMo2TymOGulL/s2EoYhvUSDcg7UXShQtgzR
 g9jqu2lTI1DKNjN6iZQMQWX/wrv19eNKJ8nHt04Rfree3iFbIpMuLgFkf0YAlo96fI6MLhlIQQrdj
 sX9BRdCA==;
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:54326
 helo=[192.168.15.8])
 by gator4166.hostgator.com with esmtpsa (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <gustavo@embeddedor.com>)
 id 1lA9yK-0034qm-Gi; Thu, 11 Feb 2021 05:17:20 -0600
Subject: Re: [PATCH][next] staging: rtl8723bs: Replace one-element array with
 flexible-array member in struct ndis_80211_var_ie
To: Dan Carpenter <dan.carpenter@oracle.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>
References: <20210210224937.GA11922@embeddedor> <20210211110630.GG2696@kadam>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <c4b8aec4-d8e0-10e0-beca-293f4d6b2a43@embeddedor.com>
Date: Thu, 11 Feb 2021 05:17:20 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210211110630.GG2696@kadam>
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - driverdev.osuosl.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1lA9yK-0034qm-Gi
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8])
 [187.162.31.110]:54326
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 4
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
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
 linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

CgpPbiAyLzExLzIxIDA1OjA2LCBEYW4gQ2FycGVudGVyIHdyb3RlOgo+IE9uIFdlZCwgRmViIDEw
LCAyMDIxIGF0IDA0OjQ5OjM3UE0gLTA2MDAsIEd1c3Rhdm8gQS4gUi4gU2lsdmEgd3JvdGU6Cj4+
IFRoZXJlIGlzIGEgcmVndWxhciBuZWVkIGluIHRoZSBrZXJuZWwgdG8gcHJvdmlkZSBhIHdheSB0
byBkZWNsYXJlIGhhdmluZwo+PiBhIGR5bmFtaWNhbGx5IHNpemVkIHNldCBvZiB0cmFpbGluZyBl
bGVtZW50cyBpbiBhIHN0cnVjdHVyZS4gS2VybmVsIGNvZGUKPj4gc2hvdWxkIGFsd2F5cyB1c2Ug
4oCcZmxleGlibGUgYXJyYXkgbWVtYmVyc+KAnVsxXSBmb3IgdGhlc2UgY2FzZXMuIFRoZSBvbGRl
cgo+PiBzdHlsZSBvZiBvbmUtZWxlbWVudCBvciB6ZXJvLWxlbmd0aCBhcnJheXMgc2hvdWxkIG5v
IGxvbmdlciBiZSB1c2VkWzJdLgo+Pgo+PiBSZWZhY3RvciB0aGUgY29kZSBhY2NvcmRpbmcgdG8g
dGhlIHVzZSBvZiBhIGZsZXhpYmxlLWFycmF5IG1lbWJlciBpbgo+PiBzdHJ1Y3QgbmRpc184MDIx
MV92YXJfaWUsIGluc3RlYWQgb2YgYSBvbmUtZWxlbWVudCBhcnJheS4KPj4KPj4gQWxzbywgdGhp
cyBoZWxwcyB3aXRoIHRoZSBvbmdvaW5nIGVmZm9ydHMgdG8gZW5hYmxlIC1XYXJyYXktYm91bmRz
IGFuZAo+PiBmaXggdGhlIGZvbGxvd2luZyB3YXJuaW5nczoKPj4KPj4gICBDQyBbTV0gIGRyaXZl
cnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfd2xhbl91dGlsLm8KPj4gSW4gZmlsZSBpbmNs
dWRlZCBmcm9tIC4vZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9pbmNsdWRlL2Rydl90eXBlcy5o
OjIwLAo+PiAgICAgICAgICAgICAgICAgIGZyb20gZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9j
b3JlL3J0d193bGFuX3V0aWwuYzo5Ogo+PiBkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUv
cnR3X3dsYW5fdXRpbC5jOiBJbiBmdW5jdGlvbiDigJhIVF9jYXBzX2hhbmRsZXLigJk6Cj4+IC4v
ZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9pbmNsdWRlL2Jhc2ljX3R5cGVzLmg6MTA4OjExOiB3
YXJuaW5nOiBhcnJheSBzdWJzY3JpcHQgMSBpcyBhYm92ZSBhcnJheSBib3VuZHMgb2Yg4oCYdThb
MV3igJkge2FrYSDigJh1bnNpZ25lZCBjaGFyWzFd4oCZfSBbLVdhcnJheS1ib3VuZHNdCj4+ICAg
MTA4IHwgIChFRjFCWVRFKCooKHU4ICopKF9fcHN0YXJ0KSkpKQo+PiAgICAgICB8ICAgICAgICAg
ICBeCj4+IC4vZHJpdmVycy9zdGFnaW5nL3J0bDg3MjNicy9pbmNsdWRlL2Jhc2ljX3R5cGVzLmg6
NDI6ODogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybyDigJhFRjFCWVRF4oCZCj4+ICAgIDQy
IHwgICgodTgpKF92YWwpKQo+PiAgICAgICB8ICAgICAgICBefn5+Cj4+IC4vZHJpdmVycy9zdGFn
aW5nL3J0bDg3MjNicy9pbmNsdWRlL2Jhc2ljX3R5cGVzLmg6MTI3OjQ6IG5vdGU6IGluIGV4cGFu
c2lvbiBvZiBtYWNybyDigJhMRV9QMUJZVEVfVE9fSE9TVF8xQllUReKAmQo+PiAgIDEyNyB8ICAg
KExFX1AxQllURV9UT19IT1NUXzFCWVRFKF9fcHN0YXJ0KSA+PiAoX19iaXRvZmZzZXQpKSAmIFwK
Pj4gICAgICAgfCAgICBefn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+PiAuL2RyaXZlcnMvc3RhZ2lu
Zy9ydGw4NzIzYnMvaW5jbHVkZS9ydHdfaHQuaDo5Nzo1NTogbm90ZTogaW4gZXhwYW5zaW9uIG9m
IG1hY3JvIOKAmExFX0JJVFNfVE9fMUJZVEXigJkKPj4gICAgOTcgfCAjZGVmaW5lIEdFVF9IVF9D
QVBBQklMSVRZX0VMRV9SWF9TVEJDKF9wRWxlU3RhcnQpICAgICBMRV9CSVRTX1RPXzFCWVRFKChf
cEVsZVN0YXJ0KSsxLCAwLCAyKQo+PiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fn5+fn5+fn5+fn5+fn4KPj4gZHJpdmVycy9z
dGFnaW5nL3J0bDg3MjNicy9jb3JlL3J0d193bGFuX3V0aWwuYzoxMTA0OjU4OiBub3RlOiBpbiBl
eHBhbnNpb24gb2YgbWFjcm8g4oCYR0VUX0hUX0NBUEFCSUxJVFlfRUxFX1JYX1NUQkPigJkKPj4g
IDExMDQgfCAgIGlmIChURVNUX0ZMQUcocGh0cHJpdi0+c3RiY19jYXAsIFNUQkNfSFRfRU5BQkxF
X1RYKSAmJiBHRVRfSFRfQ0FQQUJJTElUWV9FTEVfUlhfU1RCQyhwSUUtPmRhdGEpKSB7Cj4+ICAg
ICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KPj4gZHJpdmVycy9zdGFnaW5nL3J0
bDg3MjNicy9jb3JlL3J0d193bGFuX3V0aWwuYzoxMDUxOjc1OiB3YXJuaW5nOiBhcnJheSBzdWJz
Y3JpcHQgMiBpcyBhYm92ZSBhcnJheSBib3VuZHMgb2Yg4oCYdThbMV3igJkge2FrYSDigJh1bnNp
Z25lZCBjaGFyWzFd4oCZfSBbLVdhcnJheS1ib3VuZHNdCj4+ICAxMDUxIHwgICAgaWYgKChwbWxt
ZWluZm8tPkhUX2NhcHMudS5IVF9jYXBfZWxlbWVudC5BTVBEVV9wYXJhICYgMHgzKSA+IChwSUUt
PmRhdGFbaV0gJiAweDMpKQo+PiAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfn5+fn5+fn5+Xn5+Cj4+IGRyaXZl
cnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfd2xhbl91dGlsLmM6IEluIGZ1bmN0aW9uIOKA
mGNoZWNrX2Fzc29jX0FQ4oCZOgo+PiBkcml2ZXJzL3N0YWdpbmcvcnRsODcyM2JzL2NvcmUvcnR3
X3dsYW5fdXRpbC5jOjE2MDY6MTk6IHdhcm5pbmc6IGFycmF5IHN1YnNjcmlwdCA0IGlzIGFib3Zl
IGFycmF5IGJvdW5kcyBvZiDigJh1OFsxXeKAmSB7YWthIOKAmHVuc2lnbmVkIGNoYXJbMV3igJl9
IFstV2FycmF5LWJvdW5kc10KPj4gIDE2MDYgfCAgICAgIGlmIChwSUUtPmRhdGFbNF0gPT0gMSkK
Pj4gICAgICAgfCAgICAgICAgICB+fn5+fn5+fn5efn4KPj4gZHJpdmVycy9zdGFnaW5nL3J0bDg3
MjNicy9jb3JlL3J0d193bGFuX3V0aWwuYzoxNjA5OjIwOiB3YXJuaW5nOiBhcnJheSBzdWJzY3Jp
cHQgNSBpcyBhYm92ZSBhcnJheSBib3VuZHMgb2Yg4oCYdThbMV3igJkge2FrYSDigJh1bnNpZ25l
ZCBjaGFyWzFd4oCZfSBbLVdhcnJheS1ib3VuZHNdCj4+ICAxNjA5IHwgICAgICAgaWYgKHBJRS0+
ZGF0YVs1XSAmIFJUX0hUX0NBUF9VU0VfOTJTRSkKPj4gICAgICAgfCAgICAgICAgICAgfn5+fn5+
fn5+Xn5+Cj4+IGRyaXZlcnMvc3RhZ2luZy9ydGw4NzIzYnMvY29yZS9ydHdfd2xhbl91dGlsLmM6
MTYxMzoxOTogd2FybmluZzogYXJyYXkgc3Vic2NyaXB0IDUgaXMgYWJvdmUgYXJyYXkgYm91bmRz
IG9mIOKAmHU4WzFd4oCZIHtha2Eg4oCYdW5zaWduZWQgY2hhclsxXeKAmX0gWy1XYXJyYXktYm91
bmRzXQo+PiAgMTYxMyB8ICAgICAgaWYgKHBJRS0+ZGF0YVs1XSAmIFJUX0hUX0NBUF9VU0VfU09G
VEFQKQo+PiAgICAgICB8ICAgICAgICAgIH5+fn5+fn5+fl5+fgo+PiBkcml2ZXJzL3N0YWdpbmcv
cnRsODcyM2JzL2NvcmUvcnR3X3dsYW5fdXRpbC5jOjE2MTc6MjA6IHdhcm5pbmc6IGFycmF5IHN1
YnNjcmlwdCA2IGlzIGFib3ZlIGFycmF5IGJvdW5kcyBvZiDigJh1OFsxXeKAmSB7YWthIOKAmHVu
c2lnbmVkIGNoYXJbMV3igJl9IFstV2FycmF5LWJvdW5kc10KPj4gIDE2MTcgfCAgICAgICBpZiAo
cElFLT5kYXRhWzZdICYgUlRfSFRfQ0FQX1VTRV9KQUdVQVJfQkNVVCkgewo+PiAgICAgICB8ICAg
ICAgICAgICB+fn5+fn5+fn5efn4KPj4KPj4gWzFdIGh0dHBzOi8vZW4ud2lraXBlZGlhLm9yZy93
aWtpL0ZsZXhpYmxlX2FycmF5X21lbWJlcgo+PiBbMl0gaHR0cHM6Ly93d3cua2VybmVsLm9yZy9k
b2MvaHRtbC92NS45L3Byb2Nlc3MvZGVwcmVjYXRlZC5odG1sI3plcm8tbGVuZ3RoLWFuZC1vbmUt
ZWxlbWVudC1hcnJheXMKPj4KPj4gTGluazogaHR0cHM6Ly9naXRodWIuY29tL0tTUFAvbGludXgv
aXNzdWVzLzc5Cj4+IExpbms6IGh0dHBzOi8vZ2l0aHViLmNvbS9LU1BQL2xpbnV4L2lzc3Vlcy8x
MDkKPj4gQnVpbGQtdGVzdGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4K
Pj4gTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC82MDI0MzRiOC5qYzVEb1hKMGJt
SG94Z0lMJTI1bGtwQGludGVsLmNvbS8KPj4gU2lnbmVkLW9mZi1ieTogR3VzdGF2byBBLiBSLiBT
aWx2YSA8Z3VzdGF2b2Fyc0BrZXJuZWwub3JnPgo+IAo+IExvb2tzIG9rYXkgdG8gbWUuICBJIGxv
b2tlZCBmb3IgcG90ZW50aWFsIGlzc3VlcyB3aXRoIGNoYW5naW5nIHRoZQo+IHNpemVvZiB0aGUg
c3RydWN0IGJ1dCBjb3VsZG4ndCBmaW5kIGFueS4KCkdyZWF0LiBZZWFoOyB0aGF0J3Mgb25lIG9m
IHRoZSBmaXJzdCB0aGluZ3MgSSBsb29rIGF0IHdoZW4gSSBtYWtlCnRoZXNlIGNoYW5nZXMuIFRo
YW5rcyBmb3IgZG91YmxlIGNoZWNraW5nLiA6KQoKPiBSZXZpZXdlZC1ieTogRGFuIENhcnBlbnRl
ciA8ZGFuLmNhcnBlbnRlckBvcmFjbGUuY29tPgoKVGhhbmtzIQotLQpHdXN0YXZvCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlz
dApkZXZlbEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2
ZXJwcm9qZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
