Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51146119C69
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Dec 2019 23:32:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 821258835D;
	Tue, 10 Dec 2019 22:32:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R8U8J1OUaSD5; Tue, 10 Dec 2019 22:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C031D87893;
	Tue, 10 Dec 2019 22:32:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2DE471BF3D7
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 22:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 286CE86D89
 for <devel@linuxdriverproject.org>; Tue, 10 Dec 2019 22:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id o7YV2zZhRz4A for <devel@linuxdriverproject.org>;
 Tue, 10 Dec 2019 22:32:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9F20E86786
 for <devel@driverdev.osuosl.org>; Tue, 10 Dec 2019 22:32:16 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A8EEC214AF;
 Tue, 10 Dec 2019 22:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576017136;
 bh=rYsSXhlJmyoW6Nfvt5sPsIBN9RZGmO0tbZ6Q3HLc7Mg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=05ub06dwMrA760vRYNjwZmGyxgyvzsbfLwm/qX/c/HBouwzSnED9m4EjJNMkYgfz2
 baUdUtJ92hq/VHguM5aBlz6/IkCSuj7r+pBBLudYhveKkFf3/zQaBnbnzVvfWK8RfB
 OSBVPXUCb/buToZT8/g3iird2ikVYOyYKLbNrWYA=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 84/91] fbtft: Make sure string is NULL terminated
Date: Tue, 10 Dec 2019 17:30:28 -0500
Message-Id: <20191210223035.14270-84-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210223035.14270-1-sashal@kernel.org>
References: <20191210223035.14270-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 linux-fbdev@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 dri-devel@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

RnJvbTogQW5keSBTaGV2Y2hlbmtvIDxhbmRyaXkuc2hldmNoZW5rb0BsaW51eC5pbnRlbC5jb20+
CgpbIFVwc3RyZWFtIGNvbW1pdCAyMWY1ODU0ODBkZWI0YmNmMGQ5MmIwODg3OWMzNWQwNjZkZmVl
MDMwIF0KCk5ldyBHQ0Mgd2FybnMgYWJvdXQgaW5hcHByb3ByaWF0ZSB1c2Ugb2Ygc3RybmNweSgp
OgoKZHJpdmVycy9zdGFnaW5nL2ZidGZ0L2ZidGZ0LWNvcmUuYzogSW4gZnVuY3Rpb24g4oCYZmJ0
ZnRfZnJhbWVidWZmZXJfYWxsb2PigJk6CmRyaXZlcnMvc3RhZ2luZy9mYnRmdC9mYnRmdC1jb3Jl
LmM6NjY1OjI6IHdhcm5pbmc6IOKAmHN0cm5jcHnigJkgc3BlY2lmaWVkIGJvdW5kIDE2IGVxdWFs
cyBkZXN0aW5hdGlvbiBzaXplIFstV3N0cmluZ29wLXRydW5jYXRpb25dCiAgNjY1IHwgIHN0cm5j
cHkoaW5mby0+Zml4LmlkLCBkZXYtPmRyaXZlci0+bmFtZSwgMTYpOwogICAgICB8ICBefn5+fn5+
fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgoKTGF0ZXIgb24gdGhlIGNvcHkg
aXMgYmVpbmcgdXNlZCB3aXRoIHRoZSBhc3N1bXB0aW9uIHRvIGJlIE5VTEwgdGVybWluYXRlZC4K
TWFrZSBzdXJlIHN0cmluZyBpcyBOVUxMIHRlcm1pbmF0ZWQgYnkgc3dpdGNoaW5nIHRvIHNucHJp
bnRmKCkuCgpTaWduZWQtb2ZmLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHJpeS5zaGV2Y2hlbmtv
QGxpbnV4LmludGVsLmNvbT4KTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDE5MTEy
MDA5NTcxNi4yNjYyOC0xLWFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbQpTaWduZWQt
b2ZmLWJ5OiBHcmVnIEtyb2FoLUhhcnRtYW4gPGdyZWdraEBsaW51eGZvdW5kYXRpb24ub3JnPgpT
aWduZWQtb2ZmLWJ5OiBTYXNoYSBMZXZpbiA8c2FzaGFsQGtlcm5lbC5vcmc+Ci0tLQogZHJpdmVy
cy9zdGFnaW5nL2ZidGZ0L2ZidGZ0LWNvcmUuYyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9m
YnRmdC9mYnRmdC1jb3JlLmMgYi9kcml2ZXJzL3N0YWdpbmcvZmJ0ZnQvZmJ0ZnQtY29yZS5jCmlu
ZGV4IGQ5YmE4YzBmMTM1M2IuLmVjZTcxM2QwMjY2MDcgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvc3Rh
Z2luZy9mYnRmdC9mYnRmdC1jb3JlLmMKKysrIGIvZHJpdmVycy9zdGFnaW5nL2ZidGZ0L2ZidGZ0
LWNvcmUuYwpAQCAtNzY2LDcgKzc2Niw3IEBAIHN0cnVjdCBmYl9pbmZvICpmYnRmdF9mcmFtZWJ1
ZmZlcl9hbGxvYyhzdHJ1Y3QgZmJ0ZnRfZGlzcGxheSAqZGlzcGxheSwKIAlmYmRlZmlvLT5kZWZl
cnJlZF9pbyA9ICAgICBmYnRmdF9kZWZlcnJlZF9pbzsKIAlmYl9kZWZlcnJlZF9pb19pbml0KGlu
Zm8pOwogCi0Jc3RybmNweShpbmZvLT5maXguaWQsIGRldi0+ZHJpdmVyLT5uYW1lLCAxNik7CisJ
c25wcmludGYoaW5mby0+Zml4LmlkLCBzaXplb2YoaW5mby0+Zml4LmlkKSwgIiVzIiwgZGV2LT5k
cml2ZXItPm5hbWUpOwogCWluZm8tPmZpeC50eXBlID0gICAgICAgICAgIEZCX1RZUEVfUEFDS0VE
X1BJWEVMUzsKIAlpbmZvLT5maXgudmlzdWFsID0gICAgICAgICBGQl9WSVNVQUxfVFJVRUNPTE9S
OwogCWluZm8tPmZpeC54cGFuc3RlcCA9CSAgIDA7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmRldmVsIG1haWxpbmcgbGlzdApkZXZl
bEBsaW51eGRyaXZlcnByb2plY3Qub3JnCmh0dHA6Ly9kcml2ZXJkZXYubGludXhkcml2ZXJwcm9q
ZWN0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaXZlcmRldi1kZXZlbAo=
