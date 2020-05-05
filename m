Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA761C54E1
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 13:56:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DE20A235BE;
	Tue,  5 May 2020 11:56:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K433aJrI3V87; Tue,  5 May 2020 11:56:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA775228B4;
	Tue,  5 May 2020 11:56:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF7391BF3F0
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 11:56:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BB11186199
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 11:56:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rMEqZclpVCQg for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 11:56:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9E961860FC
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 11:56:21 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 44235AC37;
 Tue,  5 May 2020 11:56:21 +0000 (UTC)
Message-ID: <1588679748.13662.8.camel@suse.com>
Subject: Re: KASAN: slab-out-of-bounds Read in hfa384x_usbin_callback
From: Oliver Neukum <oneukum@suse.com>
To: syzbot <syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com>, 
 andreyknvl@google.com, devel@driverdev.osuosl.org,
 gregkh@linuxfoundation.org,  linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org,  nishkadg.linux@gmail.com,
 syzkaller-bugs@googlegroups.com
Date: Tue, 05 May 2020 13:55:48 +0200
In-Reply-To: <00000000000039420505a14e4951@google.com>
References: <00000000000039420505a14e4951@google.com>
Content-Type: multipart/mixed; boundary="=-L0cX0s0IEEouwFjJ7n/w"
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
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
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


--=-L0cX0s0IEEouwFjJ7n/w
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Am Freitag, den 20.03.2020, 12:28 -0700 schrieb syzbot:
> Hello,
> 
> syzbot found the following crash on:
> 
> HEAD commit:    e17994d1 usb: core: kcov: collect coverage from usb comple..
> git tree:       https://github.com/google/kasan.git usb-fuzzer
> console output: https://syzkaller.appspot.com/x/log.txt?x=11d74573e00000
> kernel config:  https://syzkaller.appspot.com/x/.config?x=5d64370c438bc60
> dashboard link: https://syzkaller.appspot.com/bug?extid=7d42d68643a35f71ac8a
> compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15fa561de00000
> C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15d74573e00000
> 
> IMPORTANT: if you fix the bug, please add the following tag to the commit:
> Reported-by: syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com
> 
> ==================================================================
> BUG: KASAN: slab-out-of-bounds in memcpy include/linux/string.h:381 [inline]
> BUG: KASAN: slab-out-of-bounds in skb_put_data include/linux/skbuff.h:2284 [inline]
> BUG: KASAN: slab-out-of-bounds in hfa384x_int_rxmonitor drivers/staging/wlan-ng/hfa384x_usb.c:3412 [inline]
> BUG: KASAN: slab-out-of-bounds in hfa384x_usbin_rx drivers/staging/wlan-ng/hfa384x_usb.c:3312 [inline]
> BUG: KASAN: slab-out-of-bounds in hfa384x_usbin_callback+0x1993/0x2360 drivers/staging/wlan-ng/hfa384x_usb.c:3026
> Read of size 19671 at addr ffff8881d226413c by task swapper/0/0

#syz test: https://github.com/google/kasan.git e17994d1
--=-L0cX0s0IEEouwFjJ7n/w
Content-Disposition: attachment; filename="0001-hfa384x_usb-fix-buffer-overflow.patch"
Content-Type: text/x-patch; name="0001-hfa384x_usb-fix-buffer-overflow.patch";
	charset="UTF-8"
Content-Transfer-Encoding: base64

RnJvbSA2ZGJjYWM4YzRiNjQ1NjAwMTYxZmVhZmM1NTc2NjU3OTA1ZjE1ZDY1IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBPbGl2ZXIgTmV1a3VtIDxvbmV1a3VtQHN1c2UuY29tPgpEYXRl
OiBUdWUsIDUgTWF5IDIwMjAgMTM6NDY6MjYgKzAyMDAKU3ViamVjdDogW1BBVENIXSBoZmEzODR4
X3VzYjogZml4IGJ1ZmZlciBvdmVyZmxvdwoKVGhlIGRyaXZlciB0cnVzdHMgdGhlIGRhdGFfbGVu
IGNvbWluZyBmcm9tIHRoZSBoYXJkd2FyZQp3aXRob3V0IHZlcmlmaWNhdGlvbi4gVGhhdCBtZWFu
cyB0aGF0IHRoaXMgb3BlbnMKYSB2ZWN0b3IgYnkgd2hpY2ggYW4gYXR0YWNrZXIgY2FuIHNtYXNo
IDY0SyBvZiB0aGUgaGVhcC4KClNpZ25lZC1vZmYtYnk6IE9saXZlciBOZXVrdW0gPG9uZXVrdW1A
c3VzZS5jb20+Ci0tLQogZHJpdmVycy9zdGFnaW5nL3dsYW4tbmcvaGZhMzg0eF91c2IuYyB8IDEy
ICsrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvd2xhbi1uZy9oZmEzODR4X3VzYi5j
IGIvZHJpdmVycy9zdGFnaW5nL3dsYW4tbmcvaGZhMzg0eF91c2IuYwppbmRleCBmYTFiZjhiMDY5
ZmQuLjViNjQ5N2Q4YzllMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9zdGFnaW5nL3dsYW4tbmcvaGZh
Mzg0eF91c2IuYworKysgYi9kcml2ZXJzL3N0YWdpbmcvd2xhbi1uZy9oZmEzODR4X3VzYi5jCkBA
IC0zMzUzLDkgKzMzNTMsOSBAQCBzdGF0aWMgdm9pZCBoZmEzODR4X2ludF9yeG1vbml0b3Ioc3Ry
dWN0IHdsYW5kZXZpY2UgKndsYW5kZXYsCiAJCQkJICBzdHJ1Y3QgaGZhMzg0eF91c2Jfcnhmcm0g
KnJ4ZnJtKQogewogCXN0cnVjdCBoZmEzODR4X3J4X2ZyYW1lICpyeGRlc2MgPSAmcnhmcm0tPmRl
c2M7Ci0JdW5zaWduZWQgaW50IGhkcmxlbiA9IDA7Ci0JdW5zaWduZWQgaW50IGRhdGFsZW4gPSAw
OwotCXVuc2lnbmVkIGludCBza2JsZW4gPSAwOworCXVuc2lnbmVkIGludCBoZHJsZW47CisJdW5z
aWduZWQgaW50IGRhdGFsZW47CisJdW5zaWduZWQgaW50IHNrYmxlbjsKIAl1OCAqZGF0YXA7CiAJ
dTE2IGZjOwogCXN0cnVjdCBza19idWZmICpza2I7CkBAIC0zNDEzLDggKzM0MTMsMTAgQEAgc3Rh
dGljIHZvaWQgaGZhMzg0eF9pbnRfcnhtb25pdG9yKHN0cnVjdCB3bGFuZGV2aWNlICp3bGFuZGV2
LAogCSAqLwogCXNrYl9wdXRfZGF0YShza2IsICZyeGRlc2MtPmZyYW1lX2NvbnRyb2wsIGhkcmxl
bik7CiAKLQkvKiBJZiBhbnksIGNvcHkgdGhlIGRhdGEgZnJvbSB0aGUgY2FyZCB0byB0aGUgc2ti
ICovCi0JaWYgKGRhdGFsZW4gPiAwKSB7CisJLyogSWYgYW55LCBjb3B5IHRoZSBkYXRhIGZyb20g
dGhlIGNhcmQgdG8gdGhlIHNrYiwKKwkgKiBhcyBsb25nIGFzIGl0IGZpdHMsIGxlc3Qgd2Ugc21h
c2ggYSBidWZmZXIKKwkgKi8KKwlpZiAoZGF0YWxlbiA+IDAgJiYgZGF0YWxlbiA8PSBza2JsZW4g
LSBoZHJsZW4pIHsKIAkJZGF0YXAgPSBza2JfcHV0X2RhdGEoc2tiLCByeGZybS0+ZGF0YSwgZGF0
YWxlbik7CiAKIAkJLyogY2hlY2sgZm9yIHVuZW5jcnlwdGVkIHN0dWZmIGlmIFdFUCBiaXQgc2V0
LiAqLwotLSAKMi4xNi40Cgo=


--=-L0cX0s0IEEouwFjJ7n/w
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--=-L0cX0s0IEEouwFjJ7n/w--

