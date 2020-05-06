Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C90D51C6FA6
	for <lists+driverdev-devel@lfdr.de>; Wed,  6 May 2020 13:51:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4DA5B87D45;
	Wed,  6 May 2020 11:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tdlxq2V950rf; Wed,  6 May 2020 11:51:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA2D787951;
	Wed,  6 May 2020 11:51:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E9CE51BF836
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 11:51:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CD2E924F06
 for <devel@linuxdriverproject.org>; Wed,  6 May 2020 11:51:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GejOXCrXaTy5 for <devel@linuxdriverproject.org>;
 Wed,  6 May 2020 11:51:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by silver.osuosl.org (Postfix) with ESMTPS id F2C3E204EB
 for <devel@driverdev.osuosl.org>; Wed,  6 May 2020 11:51:03 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id z1so891723pfn.3
 for <devel@driverdev.osuosl.org>; Wed, 06 May 2020 04:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NCWVLraG9Z8gnxmAn0SmeF0f40Gs+IBXqSv5TRfXTeo=;
 b=lcrEA0GGS/ODMtk1F9EbQgx/zhTGO7HwxM1q3YwRF1yV7sz+TG/gC9gvwnsxPQWUl5
 JzJDdag0D4HdVsx00o/HcFoqylOGBpDNPCWbqQ/5lsZ5Sj9+rB8rWUcyx2SqsNwKdLq8
 BRigHnSvx7Vx35Rhg2+39JJe9beD0dmVijEfEI5qklWM9IkysJcJsh92eP1QXtfb1/gB
 MpDZquvW1w0za/4eaHctNyYMhfXiCTbYy7yX0Fye2B7xdAqne9CJx8jqDuQgCCjKk5JG
 Rwed3oTTBNks+c1PQ37hE8Do/pVC9jiUjJdHmhoGcK51qUlm/m7+vArPv65nyVvo/gqc
 6lMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NCWVLraG9Z8gnxmAn0SmeF0f40Gs+IBXqSv5TRfXTeo=;
 b=cCHKCZsAqxZBw+isvHMOT/K8Av7qlwFm0+ivHPaeGvaDTuUdER9LumlYp7mO8Iaz9j
 /OQt1VwzzMtAPuLCjyaDz4k8jBLAUFzAuCDiTXYpLbvtU74S3nQHsv8XiqqUBv9aPnlK
 1hWtFn5aSqQr0zkI0cGcz8Y4SJAa/5mb48yOW9+5HfOYB1VemmIWzLG76gQlqIr0l+w/
 xvTRY8x5rKQTmCdXxZFvXNWlLaihuwEyOMZieMQ0ChFyA8KyDKsuyjEzSIrjJTkHPpLU
 vWoNkuHLhE0PPUnOBHB52rkwv9NwrRT/fnazSrhAU59YrfZvdlOn6YrUKrz051vfcbW9
 5QKg==
X-Gm-Message-State: AGi0PuZ8Iwrmc2LwK+jz3C9QhneZskgN1llYjVfle1E9T3ngl3uBByoV
 edLnNAAjrUbciOgSWbZBRnv3RTzgFhVNmQEOIklSiQ==
X-Google-Smtp-Source: APiQypLbnuslSjWfPJCL6GH8TRgkchj+mtZa+8D31hKdGt3QwTAT7sKf3dYFt1pz5KQgKBc84Vw4pl1Pwk8as9editc=
X-Received: by 2002:a63:a61:: with SMTP id z33mr6595886pgk.440.1588765863165; 
 Wed, 06 May 2020 04:51:03 -0700 (PDT)
MIME-Version: 1.0
References: <00000000000039420505a14e4951@google.com>
 <1588755226.13662.17.camel@suse.com>
In-Reply-To: <1588755226.13662.17.camel@suse.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 6 May 2020 13:50:52 +0200
Message-ID: <CAAeHK+zOdghTAu647iKBEU+0LqkYYOk0f7gPk_4T6BjNi=2sAQ@mail.gmail.com>
Subject: Re: KASAN: slab-out-of-bounds Read in hfa384x_usbin_callback
To: Oliver Neukum <oneukum@suse.com>
Content-Type: multipart/mixed; boundary="000000000000e870ed05a4f96035"
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
Cc: devel@driverdev.osuosl.org,
 syzbot <syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 USB list <linux-usb@vger.kernel.org>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, nishkadg.linux@gmail.com
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

--000000000000e870ed05a4f96035
Content-Type: text/plain; charset="UTF-8"

On Wed, May 6, 2020 at 10:54 AM Oliver Neukum <oneukum@suse.com> wrote:
>
> Am Freitag, den 20.03.2020, 12:28 -0700 schrieb syzbot:
> > Hello,
> >
> > syzbot found the following crash on:
> >
> > HEAD commit:    e17994d1 usb: core: kcov: collect coverage from usb comple..
> > git tree:       https://github.com/google/kasan.git usb-fuzzer
> > console output: https://syzkaller.appspot.com/x/log.txt?x=11d74573e00000
> > kernel config:  https://syzkaller.appspot.com/x/.config?x=5d64370c438bc60
> > dashboard link: https://syzkaller.appspot.com/bug?extid=7d42d68643a35f71ac8a
> > compiler:       gcc (GCC) 9.0.0 20181231 (experimental)
> > syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=15fa561de00000
> > C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=15d74573e00000
> >
> > IMPORTANT: if you fix the bug, please add the following tag to the commit:
> > Reported-by: syzbot+7d42d68643a35f71ac8a@syzkaller.appspotmail.com
> >
>
> Hi,
>
> is this bug still active and can a test be run on it? I requested one
> yesterday. If my analysis is correct this bug has security
> implications, so it is kind of important.

I see your request in the queue and it's been registered and
completed, but for some reason syzbot didn't send an email with a
response.

Let me try this once again:

#syz test: https://github.com/google/kasan.git e17994d1

--000000000000e870ed05a4f96035
Content-Type: application/octet-stream; 
	name="0001-hfa384x_usb-fix-buffer-overflow.patch"
Content-Disposition: attachment; 
	filename="0001-hfa384x_usb-fix-buffer-overflow.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_k9va5uf00>
X-Attachment-Id: f_k9va5uf00

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
--000000000000e870ed05a4f96035
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

--000000000000e870ed05a4f96035--
