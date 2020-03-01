Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E04175185
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 02:32:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F038A203CC;
	Mon,  2 Mar 2020 01:32:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pT7bt8FXiNrq; Mon,  2 Mar 2020 01:32:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C47B2035B;
	Mon,  2 Mar 2020 01:32:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D93401BF39A
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 01:32:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D0CB381148
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 01:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Cs5GcGTelia3 for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 01:32:17 +0000 (UTC)
X-Greylist: delayed 02:10:44 by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 46D2F8172A
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 01:32:17 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id p11so3519849plq.10
 for <devel@driverdev.osuosl.org>; Sun, 01 Mar 2020 17:32:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axtens.net; s=google;
 h=from:to:subject:in-reply-to:references:date:message-id:mime-version;
 bh=se0IyZ7gHAr6eXWZqvCMUC+l5nOCWe5ipTBvljrrVTM=;
 b=ASBynYC7447q00ZpeHqf2PKC8Nx2UdrkTwe0RQoPQwc2FGK20J4XhFfNTks5DS10lO
 vnURyOuqYSmzCj85qCBYJVjYWqM4OixHSHzEFQIb1McW86yT5HgyWTmUt0nPjwDiF6xZ
 NJGPec54E/F+jOz1aK2izc5qHceggkUAEf/kU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=se0IyZ7gHAr6eXWZqvCMUC+l5nOCWe5ipTBvljrrVTM=;
 b=LA/5jZLKqtNm4Rw22+oGJg8Ks5EBit3fB/aeSFqC7iKhIfhqbi0OuI3iOxkbKv6Ad+
 0iP1xrJUgu5A+Cl9NXQ/KU+xA1QNXx9CZGSBfRXdoxvtu1mltTQIWG7c0hsNGQXsmSZq
 bVCOoDY5h2u9GLtSQCn2/cbLbZBHtZ0syB3N5ijgWPSoekwyTzWLjWTkoZYsEbGFq2xG
 JzmveouN1qiCoVxtxyy3jH6T0jXieUD1QG8RkXaLjAfZNY+p0mFYV4YvyeRd4QQDgXb7
 XLG3fhoLjPDl3htrmScLAfc63IvWYNEIJlYoL3IiGPpewSz4pCjlKP5DH2eD3+M9vtqI
 iPFw==
X-Gm-Message-State: ANhLgQ1m/VPCAzDpO/mns65FsXtf8g5aMY/zrweY+HZCbvDrd8gF4U7A
 5b6K+8+nnwhrklIFYkImIJGUHhmKHN4=
X-Google-Smtp-Source: APXvYqxmGuJMAlljhCbvCHsl4IAdZQSDpFGJgzYvIy9a//apUKwSSQZyYDPoDXfkSqr3LbplqokxrA==
X-Received: by 2002:a62:5bc7:: with SMTP id p190mr14926424pfb.16.1583103389485; 
 Sun, 01 Mar 2020 14:56:29 -0800 (PST)
Received: from localhost
 (2001-44b8-1113-6700-591b-db3f-06cb-776f.static.ipv6.internode.on.net.
 [2001:44b8:1113:6700:591b:db3f:6cb:776f])
 by smtp.gmail.com with ESMTPSA id h2sm17797020pgv.40.2020.03.01.14.56.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 14:56:28 -0800 (PST)
From: Daniel Axtens <dja@axtens.net>
To: syzbot <syzbot+be6ccf3081ce8afd1b56@syzkaller.appspotmail.com>,
 arve@android.com, christian@brauner.io, devel@driverdev.osuosl.org,
 dri-devel@lists.freedesktop.org, dvyukov@google.com,
 gregkh@linuxfoundation.org, joel@joelfernandes.org, kasan-dev@googlegroups.com,
 labbott@redhat.com, linaro-mm-sig-owner@lists.linaro.org,
 linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, maco@android.com,
 sumit.semwal@linaro.org, syzkaller-bugs@googlegroups.com, tkjos@android.com
Subject: Re: BUG: unable to handle kernel paging request in
 ion_heap_clear_pages
In-Reply-To: <0000000000003eeb63059f9e41d2@google.com>
References: <0000000000003eeb63059f9e41d2@google.com>
Date: Mon, 02 Mar 2020 09:56:25 +1100
Message-ID: <87blpfr8fa.fsf@dja-thinkpad.axtens.net>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

syzbot <syzbot+be6ccf3081ce8afd1b56@syzkaller.appspotmail.com> writes:

#syz fix: kasan: fix crashes on access to memory mapped by vm_map_ram()

> This bug is marked as fixed by commit:
> kasan: support vmalloc backing of vm_map_ram()
> But I can't find it in any tested tree for more than 90 days.
> Is it a correct commit? Please update it by replying:
> #syz fix: exact-commit-title
> Until then the bug is still considered open and
> new crashes with the same signature are ignored.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
