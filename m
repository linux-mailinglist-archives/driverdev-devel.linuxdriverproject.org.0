Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 077E5270ED1
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 17:16:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EC9F086BA7;
	Sat, 19 Sep 2020 15:16:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bQ7aZQ6g3ayP; Sat, 19 Sep 2020 15:16:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A6A878636D;
	Sat, 19 Sep 2020 15:16:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7F3471BF4D7
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 15:16:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7B4048636D
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 15:16:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oqFpuAPaNWZw for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 15:16:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B7D8E860C6
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 15:16:50 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id w11so9367560lfn.2
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 08:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=/Yyx5fgdQQ53MJfSQkVm3NCGXBb0SNoIJgKMHS8hFqU=;
 b=rN7OavEaQ4SwSGOpsJTrpu03q6Glz1O6NFAjy8AikXA7iFrkbitfUVx01VMLZ4M6Ue
 sEqqInFS75d8eXpw59FJiEYbpUqnkORrfmcEaFVLhCeBLNOJhVo5dj2bSmpvRqwP1/5O
 1jnLtTiBCA1tvQYPrfM7z5oe3bkE2zUKFDowcCoATPWIdhdX19EVq2dEezActrm+QKJg
 0fn6ZG0N/BubIi9AhxEACFjMkKv7MQ2R4R0ziHGIKIuKhhI6HEZY5KiXWLxoCeoXRmv7
 SXWGUC0YXiiSzojyoxsc120R58zfbMV53Vyys19g9flOxW6/svOkdhPuf132O66GguW2
 FrUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=/Yyx5fgdQQ53MJfSQkVm3NCGXBb0SNoIJgKMHS8hFqU=;
 b=CAMILdgHs2Unlgrr7DhnBT2bpg2B7Jqo2M23ZhZdoW64qBzm5trPTphBOxRuPQTROd
 5pJkq6XMdGwwRU+ZwwDjj3OaMACpnE4GnT0jTz1vLO+7CIxRizxC5rMT4yuxQv6WEg00
 uPKt6vqN/q943W/dmREs5LfS3gjxvic6bkL/UqpP/UV+kKW6YjakeivebyK511ng9GsF
 Dp+QaD1QuBhG/o86uz/CXRwT+e01KAO0Z31HMf3d1h+cO8GgOJ8fNKgG6V8lLCLQDn56
 cR55Vg6clWaPrzRvQVPV3yYeRpuJWchcAzGGFM8kbovokrEMZJ+pKtPdwxuU5CMCxcbQ
 Ky6w==
X-Gm-Message-State: AOAM531IX9NGF9Dl6AWkaFVr57DpAPVBjUuT7GyNC6SNCV1mffiRE8q1
 cLSvQdC/y1MgO5wpNrTt/hm3ldWk997SnXQrDUM=
X-Google-Smtp-Source: ABdhPJwuWHxT1algO/3mzGuimfSdFOFDRjOyCniqmj9rP8XU1guJfFUmBH+P7dbey4pHmLDJd+qS0RNZJZ8JsHkx+/c=
X-Received: by 2002:ac2:4424:: with SMTP id w4mr11947842lfl.447.1600528608758; 
 Sat, 19 Sep 2020 08:16:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:6e58:0:0:0:0:0 with HTTP; Sat, 19 Sep 2020 08:16:48
 -0700 (PDT)
From: Kofi Koduah Sarpong <kofikoduahsarpong68@gmail.com>
Date: Sat, 19 Sep 2020 08:16:48 -0700
Message-ID: <CAGyyCatJ-GsTnppF_8M5=VUOK+S9JoJyUVUoucVHSVOsHgJUkQ@mail.gmail.com>
Subject: Re: investment interest from Engr: Kofi Sarpong Please go through and
 get back to me.
To: undisclosed-recipients:;
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
Reply-To: kkoduah.sarpong@outlook.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

THVrb2lsIE92ZXJzZWFzIEdoLiBMdGQuCk9pbCAmIEdhcyBFeHRyYWN0aW9uIENvbXBhbmllcwpO
by4gNjggTWFua3JhbG8gU3RyZWV0CkVhc3QgQ2FudG9ubWVudHMKQWNjcmEgR2hhbmEuCgpEZWFy
OiBSZWVtIEF3d2FhZAoKTXkgbmFtZSBpcyBFbmdyOiBLb2ZpIEtvZHVhaCBTYXJwb25nLgpJIGFt
IHRoZSBDaGllZiBFeGVjdXRpdmUgT2ZmaWNlciBvZiBMdWtvaWwgT3ZlcnNlYXMgR2guIEx0ZCBH
aGFuYS4KSSB3aWxsIGJlIHJldGlyaW5nIGZyb20gbXkgd29yayBieSBKdW5lIG5leHQgeWVhci4g
SSB3cml0ZSB0byBpbmZvcm0KeW91IG9mIG15IGludGVudGlvbiB0byBpbnZlc3QgaW4gYSBIb3Rl
bCBidXNpbmVzcyBvciBhbnkgb3RoZXIgZm9ybXMKb2YgYnVzaW5lc3MgaW4geW91ciBjb3VudHJ5
IGFuZCBpIHJlcXVlc3QgeW91IGFzc2lzdHMgbWUgaW4gY2FycnlpbmcKb3V0IHRoZSBmZWFzaWJp
bGl0eSBzdHVkaWVzIG9uIGxvY2F0aW9uIGFuZCBsaWtlbHkgY29zdCBpbXBsaWNhdGlvbiwKdHlw
ZSBhbmQgZXN0aW1hdGlvbiBvbiBob3cgbXVjaCBpdCB3aWxsIGNvc3QgdG8gZXN0YWJsaXNoIGEg
dGhyZWUgc3Rhcgpob3RlbCwgZWl0aGVyIGJ5IG91dHJpZ2h0IHB1cmNoYXNlIG9mIGFscmVhZHkg
ZXhpc3Rpbmcgb25lIG9yIGEKZGlsYXBpZGF0ZWQgb25lIHRoYXQgd2UgY2FuIHJlbm92YXRlIG9y
IHNldHRpbmcgdXAgYSBuZXcgb25lIGVudGlyZWx5LgoKSWYgeW91IHNpbmNlcmVseSBjYXJyeSBv
dXQgdGhpcyBzdXJ2ZXksIGFuZCBnaXZlIG1lIGZlZWRiYWNrIGFzIGZhc3QKYXMgcG9zc2libGUs
IEkgd2lsbCBnaXZlIHlvdSB0aGUgcG93ZXIgb2YgYXR0b3JuZXkgdG8gYnVpbGQgJiBtYW5hZ2UK
dGhlIGhvdGVsIGZvciBtZSwgcGVuZGluZyBteSByZXRpcmVtZW50IG5leHQgeWVhciBhcyBJIHNh
aWQuCgpTaXIsIGkgaGF2ZSB0aGUgc3VtIG9mIChVUyQ4NSBtaWxsaW9uIFVTRCkgdGhhdCBJIGRl
cG9zaXRlZCBpbiBhCkZpbmFuY2UgY29tcGFueSBvdXRzaWRlIG15IGNvdW50cnkgZm9yIHRoaXMg
cHJvamVjdC4KClBsZWFzZSBkb27igJl0IGRpc3JlZ2FyZCB0aGlzIG1lc3NhZ2UgSSBhbSB2ZXJ5
IHNpbmNlcmUgaW4gd2hhdCBhbQp0ZWxsaW5nIHlvdSB0aGUgZG9jdW1lbnRzIGZvciB0aGUgZGVw
b3NpdCBJIHdpbGwgc2VuZCB0aGVtIHRvIHlvdSBmb3IKeW91ciBjb25maXJtYXRpb24gYXMgc29v
biBhcyB3ZSBwcm9jZWVkLgoKSSBoYXZlIHZlcnkgbGl0dGxlIGlzc3VlIHdpdGggaGVhbHRoIHJp
Z2h0IG5vdyBhcyBhIHJlc3VsdCBvZiBhZ2UgYnV0CkkgaGF2ZSBiZWVuIGFzc3VyZWQgYnkgbXkg
ZG9jdG9yIHRoYXQgSSB3aWxsIGJlIGZpbmUgYW5kIGdldCBiYWNrIHRvCndvcmsgc29vbiBwcmVz
ZW50bHkgaSBhbSBpbiB0aGUgbmVpZ2hib3JpbmcgY291bnRyeSBmb3IgbWVkaWNhbApyZWFzb24u
CgpQbGVhc2UgZG8gbGV0IG1lIGtub3cgaWYgeW91IGFyZSBjYXBhYmxlLCBhbmQgY2FuIGhhbmRs
aW5nIHN1Y2gKYnVzaW5lc3MuIEZlZWQgbWUgYmFjayB3aXRoIHlvdXIgZGV0YWlscywgYW5kIHlv
dXIgYXJlYSBvZgpzcGVjaWFsaXphdGlvbiBzaG91bGQgYmUgaW5kaWNhdGVkIGFzIHdlbGwuIEkg
d2lsbCBiZSBleHBlY3RpbmcgeW91cgpyZXBseSBhcyBzb29uIGFzIHBvc3NpYmxlLgoKUGxlYXNl
IHNlbmQgeW91ciB0ZWxlcGhvbmUgbnVtYmVyIHRvIG1lIGkgd2lsbCBjYWxsIHlvdSBmb3IgbW9y
ZSBkZXRhaWxzLgoKClJlZ2FyZHMKRW5ncjogS29maSBLb2R1YWggU2FycG9uZwpDaGllZiBFeGVj
dXRpdmUgT2ZmaWNlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpkZXZlbCBtYWlsaW5nIGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRw
Oi8vZHJpdmVyZGV2LmxpbnV4ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2
ZXJkZXYtZGV2ZWwK
