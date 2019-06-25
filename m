Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF41A5547F
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2019 18:30:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8BA4B8790D;
	Tue, 25 Jun 2019 16:30:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UIm88K3A5FaU; Tue, 25 Jun 2019 16:30:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E2A8857D6;
	Tue, 25 Jun 2019 16:30:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 213E01BF47E
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 16:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1C89D841DA
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2019 16:30:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qDvhA5752OiL for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2019 16:30:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B400B84115
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2019 16:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1561480199;
 bh=FuLDCIMiyFywdBoNAp9VCvruWLpn1+JmNgLt1wBFelE=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=PB+h5C7V622H/a6mlUgl4n93xl+sPqyOI/loOVc3JJreITN8y5waxeiokKm2mnq5M
 ds8UvywKGWu0EzRpdQZWtcbLk2xTCfq7adYHhUuXDEr2u8rZ0Zs2l0pKkqZSoGfPWg
 Pe6bcamLBakD6YPzuQ9xnmyVyePtJC3Cx/M1dxmM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.111]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0MSdNs-1i7GqZ0amq-00RZ0C; Tue, 25
 Jun 2019 18:29:59 +0200
Subject: Re: [PATCH] staging: bcm2835-camera: Restore return behavior of
 ctrl_set_bitrate()
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.org>
References: <1561414395-12518-1-git-send-email-wahrenst@gmx.net>
 <20190625075558.GY28859@kadam>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <27ed9c22-1d36-7c3e-a81b-5fa1e8245d1e@gmx.net>
Date: Tue, 25 Jun 2019 18:29:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190625075558.GY28859@kadam>
Content-Language: en-US
X-Provags-ID: V03:K1:GHoWwFKH6felGU7YCBRWUDDD4puCsiQCR5xDusIL4xDzUXjfkRn
 SxUp9ALAg6TG5ijkN0g0+/qOQbEDhHTjkYDJ/Iw8hR+QYsYCxBIcEQ5oSw3y/6LMDVbJmV9
 Qc73g4tuThl18ZdZgfwoDz+YGHKxeO6i9WZ6yfLpak+Hr9uyJ6d3/IF9KDvSsR2aCzZSqXu
 RsTn+5WDF2aMjSKk8p6sQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:SpBmrPq5aMU=:w83TH7BW6D1q4uHlbDqvjz
 NgZVrqpyrjf6jrcmTAmO/t7IUc6419Q8wKqOx8V1lIeoXIIJkzlVvjO1+nmVDbp2TMQMkM4uY
 If5G7/HrqR/OePmSm8LR2KEAylKWaulyl8zsA2W14hKM8kXfFXaOjEHNkGbSXEwiUy17krGQr
 PZFTL4Cc4Nu/m5Pw99q0rNEDMij+tj/yPWr6+5j1AmvE/Ro26u99j4H6WW3eOJNFR3tJeuCXe
 NsRZxAwIHip5qLEveEPRF6fWT+jRIu29ZWPUgbdsLaxULaH82vq3AycwYw5W0t0lUaqjykC5U
 34l+rlw4VKCSUVRK7qs/2D3S4GtNbODJpnZpK+PzaB5v1iCKShtoPMEUwWhtHlJmqRWBFQwqy
 OYhp62nHYvGK1YEHle+Ckez1DWkrZI12a9b8jhy0f+AxuUR8wwJxooDoxUVcvWXYewIkv6yCS
 qvYlNFhaREWDSHasaoXg+IttaoSxDj/AtO/17s7VZ1jt4LDx/Zs1E9xld9HrCKSwqIB5rkXFE
 y6GBhWgUFpj6Jjrj5AwIcjauA2jIeehBIlEY/vEw0+HhqrParH1R+ARE/Wq8X/ixxj0ydINEE
 ipDwmzSkCFx6jHOY1Ep/rdQX6mwF/OI5n7d56s5th9jqDhBwXiIT3lLJSxA8bsxf8RpEi6iim
 qRCW7VmK7nE0OsXf5hp9ubehkk1ryYn5sn+ss2K5JE/iKIOvykEox+NkMCn0MuRnH7di7tJZ/
 oec3vDslCNOk16hv+SdlA6PLilI00WQg/zllPPIjcknFARK4iwCy/9jZloypHPV3tg4WoDLYW
 vrgZvgwVbS3DUcDMPA+kFAuJi+XxjYlA14aOrJFX3G7eskOiCZQPJesgazXG84rDvEp3JvjS+
 ijsgXI1PQ73Y0NLS41nL9MJBZzEYHWLe67SOJU3E2LK+KcTjoMuBbKVlR/vY0N5CIQokWkRKi
 CQOHgZYI62sYhw4kaazCp8kbHJLWTJB+QVnRYychZgGMMfPd2T/6A
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
 Madhumitha Prabakaran <madhumithabiw@gmail.com>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

SGkgRGFuLApoaSBEYXZlLAoKQW0gMjUuMDYuMTkgdW0gMDk6NTUgc2NocmllYiBEYW4gQ2FycGVu
dGVyOgo+IE9uIFR1ZSwgSnVuIDI1LCAyMDE5IGF0IDEyOjEzOjE1QU0gKzAyMDAsIFN0ZWZhbiBX
YWhyZW4gd3JvdGU6Cj4+IFRoZSBjb21taXQgNTJjNGRmY2VhZDQ5ICgiU3RhZ2luZzogdmMwNF9z
ZXJ2aWNlczogQ2xlYW51cCBpbgo+PiBjdHJsX3NldF9iaXRyYXRlKCkiKSBjaGFuZ2VkIHRoZSBy
ZXR1cm4gYmVoYXZpb3Igb2YgY3RybF9zZXRfYml0cmF0ZSgpLgo+PiBUaGlzIGJyZWFrcyBwcm9i
aW5nIG9mIGJjbTI4MzUtY2FtZXJhOgo+Pgo+PiAgICAgYmNtMjgzNS12NGwyOiBtbWFsX2luaXQ6
IGZhaWxlZCB0byBzZXQgYWxsIGNhbWVyYSBjb250cm9sczogLTMKPj4gICAgIENsZWFudXA6IERl
c3Ryb3kgdmlkZW8gZW5jb2Rlcgo+PiAgICAgQ2xlYW51cDogRGVzdHJveSBpbWFnZSBlbmNvZGVy
Cj4+ICAgICBDbGVhbnVwOiBEZXN0cm95IHZpZGVvIHJlbmRlcgo+PiAgICAgQ2xlYW51cDogRGVz
dHJveSBjYW1lcmEKPj4gICAgIGJjbTI4MzUtdjRsMjogYmNtMjgzNV9tbWFsX3Byb2JlOiBtbWFs
IGluaXQgZmFpbGVkOiAtMwo+PiAgICAgYmNtMjgzNS1jYW1lcmE6IHByb2JlIG9mIGJjbTI4MzUt
Y2FtZXJhIGZhaWxlZCB3aXRoIGVycm9yIC0zCj4+Cj4+IFNvIHJlc3RvcmUgdGhlIG9sZCBiZWhh
dmlvciBhbmQgZml4IHRoaXMgaXNzdWUuCj4+Cj4+IEZpeGVzOiA1MmM0ZGZjZWFkNDkgKCJTdGFn
aW5nOiB2YzA0X3NlcnZpY2VzOiBDbGVhbnVwIGluIGN0cmxfc2V0X2JpdHJhdGUoKSIpCj4+IFNp
Z25lZC1vZmYtYnk6IFN0ZWZhbiBXYWhyZW4gPHdhaHJlbnN0QGdteC5uZXQ+Cj4gSSBmZWVsIGxp
a2UgdGhpcyBwYXBlcnMgb3ZlciB0aGUgaXNzdWUuICBJdCB3b3VsZCBiZSBiZXR0ZXIgdG8gZmln
dXJlCj4gb3V0IHdoeSB0aGlzIGlzIGZhaWxpbmcgYW5kIGZpeCBpdCBwcm9wZXJseS4gIC0zIGlz
IC1FU1JDSCBhbmQgd2hlbiBJCj4gZ3JlcCBmb3IgRVNSQ0ggSSBvbmx5IHNlZSBpdCB1c2VkIGlu
IHRoZSBpb2N0bCBzbyB0aGF0IGNhbid0IGJlIGl0Lgo+Cj4gSSB0aGluayBpdCBtdXN0IGJlIC1N
TUFMX01TR19TVEFUVVNfRUlOVkFMIGFjdHVhbGx5LCBidXQgaXQgY29tZXMgZnJvbQo+IHRoZSBm
aXJtd2FyZSBvciBzb21ldGhpbmcgc28gd2UgY2FuJ3QgZ3JlcCBmb3IgaXQuCnllcyB0aGlzIGlz
IGEgcmVzdWx0IGZyb20gdGhlIFZDNCBmaXJtd2FyZSwgdGhlcmUgaXMgbm90aGluZyBpIGNhbiBk
bwphYm91dCBpdC4gRXZlbiB0aGUgZmlybXdhcmUgaGFzIGJlZW4gZml4ZWQsIHRoZSBkcml2ZXIg
bXVzdCBiZQpjb21wYXRpYmxlIHdpdGggb2xkZXIgZmlybXdhcmUgdmVyc2lvbi4KPiBDYW4gd2Ug
ZG8gc29tZSBtb3JlIGRpZ2dpbmcgdG8gZmluZCBvdXQgd2h5IGl0J3MgZmFpbGluZyBvciBvdGhl
cndpc2UKPiB3ZSBjb3VsZCBhZGQgYSBjb21tZW50Lgo+Cj4gCS8qCj4gCSAqIEZJWE1FOiAgcG9y
dF9wYXJhbWV0ZXJfc2V0KCkgc29tZXRpbWVzIGZhaWxzIHdpdGgKPiAJICogLU1NQUxfTVNHX1NU
QVRVU19FSU5WQUwgYW5kIHdlIGRvbid0IGtub3cgd2h5IHNvIHdlJ3JlCj4gCSAqIGlnbm9yaW5n
IHRob3NlIGVycm9ycyBmb3Igbm93Lgo+IAkgKgo+IAkgKi8KPiAJcmV0dXJuIDA7CgpJIHdpbGwg
YWRkIGEgY29tbWVudCBhbmQgYSB2NGwyX2RiZyBlbnRyeS4KCkBEYXZlCgpJIHVzZWQgYSBSYXNw
YmVycnkgUGkgMyB3aXRoIGEgVjEuMyBjYW1lcmEgYW5kIGdldCB0aGlzIHdpdGggYW4KYWRkaXRp
b25hbCB2NGwyX2RiZyBpbiBjdHJsX3NldF9iaXRyYXRlKCkKClvCoMKgwqAgMS40NzI4MDVdIHJh
c3BiZXJyeXBpLWZpcm13YXJlIHNvYzpmaXJtd2FyZTogQXR0YWNoZWQgdG8gZmlybXdhcmUKZnJv
bSAyMDE5LTAzLTI3IDE1OjQ4Ci4uLgpbwqDCoMKgIDcuNDQxNjM5XSB2aWRlb2RldjogTGludXgg
dmlkZW8gY2FwdHVyZSBpbnRlcmZhY2U6IHYyLjAwClvCoMKgwqAgNy41MTE2NTldIGJjbTI4MzVf
djRsMjogbW9kdWxlIGlzIGZyb20gdGhlIHN0YWdpbmcgZGlyZWN0b3J5LCB0aGUKcXVhbGl0eSBp
cyB1bmtub3duLCB5b3UgaGF2ZSBiZWVuIHdhcm5lZC4KLi4uClvCoMKgwqAgOC4xNjI1MDRdIGJj
bTI4MzUtdjRsMjogU2V0IGZwcyByYW5nZSB0byAzMDAwMC8xMDAwIHRvIDMwMDAwLzEwMDAKW8Kg
wqDCoCA4LjE2MzEwNF0gYmNtMjgzNS12NGwyOiBTZXQgZnBzIHJhbmdlIHRvIDMwMDAwLzEwMDAg
dG8gMzAwMDAvMTAwMApbwqDCoMKgIDguMTYzNjI0XSBiY20yODM1LXY0bDI6IFNldCBmcHMgcmFu
Z2UgdG8gMzAwMDAvMTAwMCB0byAzMDAwMC8xMDAwClvCoMKgwqAgOC4xNjQzOTVdIGJjbTI4MzUt
djRsMjogbW1hbF9jdHJsOmVlY2Q3MTg3IGN0cmwgaWQ6MHg5ODA5MWYgY3RybAp2YWw6MCBpbWFn
ZWZ4OjB4MCBjb2xvcl9lZmZlY3Q6ZmFsc2UgdTowIHY6MCByZXQgMCgwKQpbwqDCoMKgIDguMTY0
NDkzXSBiY20yODM1LXY0bDI6IGN0cmxfc2V0X2NvbGZ4OiBBZnRlcjogbW1hbF9jdHJsOjFlYzE4
ZTM3CmN0cmwgaWQ6MHg5ODA5MmEgY3RybCB2YWw6MzI4OTYgcmV0IDAoMCkKW8KgwqDCoCA4LjE2
NTQxM10gYmNtMjgzNS12NGwyOiBjdHJsX3NldF9iaXRyYXRlOiBBZnRlcjogbW1hbF9jdHJsOmIw
MWEzYjQ4CmN0cmwgaWQ6MHg5OTA5Y2YgY3RybCB2YWw6MTAwMDAwMDAgcmV0IC0zKC0yMikKW8Kg
wqDCoCA4LjE2NTg3Ml0gYmNtMjgzNS12NGwyOiBzY2VuZSBtb2RlIHNlbGVjdGVkIDAsIHdhcyAw
ClvCoMKgwqAgOC4xNjYyNDldIGJjbTI4MzUtdjRsMjogVjRMMiBkZXZpY2UgcmVnaXN0ZXJlZCBh
cyB2aWRlbzAgLSBzdGlsbHMKbW9kZSA+IDEyODB4NzIwClvCoMKgwqAgOC4xNjY1OTZdIGJjbTI4
MzUtdjRsMjogdmlkX2NhcCAtIHNldCB1cCBlbmNvZGUgY29tcApbwqDCoMKgIDguMTcxMjA4XSBi
Y20yODM1LXY0bDI6IEpQRyAtIGJ1ZiBzaXplIG5vdyA3ODY0MzIgd2FzIDc4NjQzMgpbwqDCoMKg
IDguMTcxMjIwXSBiY20yODM1LXY0bDI6IHZpZF9jYXAgLSBjdXJfYnVmLnNpemUgc2V0IHRvIDc4
NjQzMgpbwqDCoMKgIDguMTcxMjI4XSBiY20yODM1LXY0bDI6IFNldCBkZXYtPmNhcHR1cmUuZm10
IDQ3NDU1MDRBLCAxMDI0eDc2OCwKc3RyaWRlIDAsIHNpemUgNzg2NDMyClvCoMKgwqAgOC4xNzEy
MzRdIGJjbTI4MzUtdjRsMjogQnJvYWRjb20gMjgzNSBNTUFMIHZpZGVvIGNhcHR1cmUgdmVyIDAu
MC4yCmxvYWRlZC4KCkxvb2tzIGxpa2UgdGhlIGZpcm13YXJlIGRpc2xpa2UgdmFsOjEwMDAwMDAw
CgpBbnkgdGhvdWdodHM/Cgo+Cj4KPiByZWdhcmRzLAo+IGRhbiBjYXJwZW50ZXIKPgo+Cj4gX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdAo+IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpk
ZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJp
dmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYt
ZGV2ZWwK
