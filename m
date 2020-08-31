Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB5B257860
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Aug 2020 13:28:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49EB5878ED;
	Mon, 31 Aug 2020 11:28:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2+mKRVoAcmMx; Mon, 31 Aug 2020 11:28:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 79B4E8798F;
	Mon, 31 Aug 2020 11:28:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 05F661BF477
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 11:28:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 028CE8640E
 for <devel@linuxdriverproject.org>; Mon, 31 Aug 2020 11:28:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nfuMXSGrAMnv for <devel@linuxdriverproject.org>;
 Mon, 31 Aug 2020 11:28:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com
 [209.85.222.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6DE6F84DBD
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 11:28:25 +0000 (UTC)
Received: by mail-ua1-f68.google.com with SMTP id s29so1887506uae.1
 for <devel@driverdev.osuosl.org>; Mon, 31 Aug 2020 04:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=rNe9DIgXAZRBYyRXVk2L0bjf37ggS/ySO4N7/MxSntU=;
 b=DcgyW7B6aYSZlD+0XhKcOW6rW56/Cl2u3CCzYYDSu11m89iJaBzltTeHoZQg+8Aiza
 XLS5x6pWkWjiX9xbA/oAS10sxYKYRkwywrnIJ31a2MfHCEv+d8r/tMgxlnYVdzjJCYvS
 1alSol10W9Lrecw3iurg25InCKrfyI9DFWLERpDId5jMhugfTxv6TTNqRhYzpVJJ8bZI
 /fp1//Jyb9oMhgmjeS7hBI7Br3LN/C2d1PHjTIKYG1B17eb7AHKV2ViwrJYerSiNl9JR
 seS6+LywPqhPDERtJjDC/yilvpjFE5PdYsQdkOqex8orf8IpF/XbQ82JiH1y6vwnbbyd
 eqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=rNe9DIgXAZRBYyRXVk2L0bjf37ggS/ySO4N7/MxSntU=;
 b=Pxqy/qXUQYqR7u2qbjSRowQTxGBq1jphQIagXnzCv8RHSeXZvbbRMpOcUM7/UhCKpp
 SnkwK1lSCSmbypdwHEaKB0AX4kRy24WO9q2fzgIVHnR1s5mY6SdemyV4eK5dqTWG0Jrv
 k4gISslpZtgrOPNZfyGCpc/QMGh1tlU9APU5TPlO/kZkdZZrt1VIkhZqZ7lFgizl6KD2
 fnxL4tyEE2G+L0rIuEw43kZv/YC0ATdyuHS4cESBVQx+ebqzU4IUqiWbhzH7dOqpCn9i
 bGe6kkxWOtweSrkBmH8zDtNAkJraJa9K7xiqqDcHALVm2L4LL9JllTcbGwjihirGsGS1
 KnVg==
X-Gm-Message-State: AOAM5322OLdKxrDo9aSoInPYDlENR77PL9lApUQjx4O1vatQyCezXp7f
 85nYVZ4gGVs8NyPIGgrrZaNbKDxu2NPbrhyfHXg=
X-Google-Smtp-Source: ABdhPJzedYq0bvzZmPIEHYGUL1+d4J3R0h+VMs+nc5wmS+M/12BYeDSImis/DQrP43zPfsal8Untz60kDoUQYhbeHoI=
X-Received: by 2002:a9f:220a:: with SMTP id 10mr367064uad.73.1598873304071;
 Mon, 31 Aug 2020 04:28:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:59a6:0:0:0:0:0 with HTTP; Mon, 31 Aug 2020 04:28:23
 -0700 (PDT)
From: "Miss.Aisha Gaddafi" <sheratonhotels01@gmail.com>
Date: Mon, 31 Aug 2020 04:28:23 -0700
Message-ID: <CAGGx3m_i04_we=hV=EhTgD_dfFupOz5jfqeyWTcogrve+gi1Uw@mail.gmail.com>
Subject: URGENT BUSINESS PROPOSAL
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
Reply-To: aishsgaddafi00@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

LS0gCiBEZWFyZXN0IE9uZSwKCkkgYW0gTWlzcyBBaXNoYSBHYWRkYWZpLCBvbmUgb2YgdGhlIGRh
dWdodGVycyBvZiB0aGUgZW1iYXR0bGVkCnByZXNpZGVudCBvZiBMaWJ5YSwgSSBhbSBjdXJyZW50
bHkgcmVzaWRpbmcgaW4gb25lIG9mIHRoZSBBZnJpY2FuCkNvdW50cmllcywgdW5mb3J0dW5hdGVs
eSBhcyBhIHJlZnVnZWUuIEF0IHRoZSBtZWFudGltZSwgbXkgZmFtaWx5IGlzCnRoZSB0YXJnZXQg
b2YgV2VzdGVybiBuYXRpb25zIGxlZCBieSBOYXRvIHdobyB3YW50cyB0byBkZXN0cm95IG15CmZh
dGhlciBhdCBhbGwgY29zdHMuIE91ciBpbnZlc3RtZW50cyBhbmQgYmFuayBhY2NvdW50cyBpbiBz
ZXZlcmFsCmNvdW50cmllcyBhcmUgdGhlaXIgdGFyZ2V0cyB0byBmcmVlemUuCgpJIGhhdmUgYmVl
biBjb21taXNzaW9uZWQgdG8gY29udGFjdCBhbiBpbnRlcmVzdGVkIGZvcmVpZ24KaW52ZXN0b3Iv
cGFydG5lciB3aG8gd2lsbCBiZSBhYmxlIHRvIHRha2UKYWJzb2x1dGUgY29udHJvbCBvZiBwYXJ0
IG9mIHRoZSB2YXN0IGNhc2ggYXZhaWxhYmxlIHRvIHByaXZhdGUgYWNjb3VudAp3aXRoIG15IGxh
dGUgYnJvdGhlciB3aG8gd2FzIGtpbGxlZCBieSBOQVRPIGFpciBzdHJpa2UsIGZvciBhIHBvc3Np
YmxlCmludmVzdG1lbnQgaW4geW91ciBjb3VudHJ5LgoKSWYgdGhpcyB0cmFuc2FjdGlvbiBpbnRl
cmVzdCB5b3UsIHlvdSBkb27igJl0IGhhdmUgdG8gZGlzY2xvc2UgaXQgdG8gYW55CmJvZHkgYmVj
YXVzZSBvZiB3aGF0IGlzIGdvaW5nIHdpdGggbXkgZW50aXJlIGZhbWlseSwgaWYgdGhlIHVuaXRl
ZApuYXRpb24gaGFwcGVucyB0byBrbm93IHRoaXMgYWNjb3VudCwgdGhleSB3aWxsIGZyZWV6aW5n
IGl0IGFzIHRoZXkKZnJlZXplIG90aGVycyBzbyBrZWVwIHRoaXMgdHJhbnNhY3Rpb24gZm9yIHlv
dXJzZWxmIG9ubHkgdW50aWwgd2UKZmluYWxpemUgaXQuCkkgd2FudCB0byB0cmFuc2ZlciB0aGlz
IG1vbmV5IGludG8geW91ciBhY2NvdW50IGltbWVkaWF0ZWx5IGZvciBvbndhcmQKaW52ZXN0bWVu
dCBpbiB5b3VyIGNvdW50cnkgYmVjYXVzZSBJIGRvbuKAmXQgd2FudCB0aGUgdW5pdGVkIG5hdGlv
biB0bwprbm93IGFib3V0IHRoaXMgYWNjb3VudC4KClRoZXJlZm9yZSBpZiB5b3UgYXJlIGNhcGFi
bGUgb2YgcnVubmluZyBhbiBlc3RhYmxpc2htZW50IGFuZCBjYW4KbWFpbnRhaW4gdGhlIGhpZ2gg
bGV2ZWwgb2Ygc2VjcmVjeSByZXF1aXJlZCBpbiB0aGlzIHByb2plY3QsIGtpbmRseQpyZXNwb25k
IHdpdGggdGhlIGZvbGxvd2luZyBpbmZvcm1hdGlvbiBmb3IgZGV0YWlscyBvZiB0aGUKcHJvamVj
dC5QbGVhc2UKCjEuIFlvdXIgZnVsbCBuYW1lcyBhbmQgYWRkcmVzcwoyLiBZb3VyIHByaXZhdGUg
dGVsZXBob25lIGFuZCBmYXggbnVtYmVycwozLiBZb3VyIHByaXZhdGUgZW1haWwgYWRkcmVzcwo0
LiBBZ2UgYW5kIHByb2Zlc3Npb24KCkJlc3QgUmVnYXJkCk1pc3MuQWlzaGEgR2FkZGFmaQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpkZXZlbCBtYWlsaW5n
IGxpc3QKZGV2ZWxAbGludXhkcml2ZXJwcm9qZWN0Lm9yZwpodHRwOi8vZHJpdmVyZGV2LmxpbnV4
ZHJpdmVycHJvamVjdC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcml2ZXJkZXYtZGV2ZWwK
