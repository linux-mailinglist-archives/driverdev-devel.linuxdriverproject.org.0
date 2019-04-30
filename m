Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31FDFA6D
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 15:32:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4DA528796D;
	Tue, 30 Apr 2019 13:32:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gkU7Xn6+YzYO; Tue, 30 Apr 2019 13:32:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 74F5787919;
	Tue, 30 Apr 2019 13:32:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 814641BF5DA
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 13:32:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 790A0820D3
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 13:32:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8+5Ucb7IZIYl for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 13:32:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f195.google.com (mail-oi1-f195.google.com
 [209.85.167.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E845481FA0
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 13:32:31 +0000 (UTC)
Received: by mail-oi1-f195.google.com with SMTP id y64so5684990oia.7
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 06:32:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IreQ0jouyS/D8gYDCyS7jEiprNx5trWg2oesU5FoXa0=;
 b=C5fzeWhQ/2btZ4CD0g7sbhi3duroFEFBk9mAeRGfXv0yxlnxQn+udOTK1Uf1fcuH7+
 L4aP4vVQCWq3O2BiKrQ+rP60GhxiGjJltQ3jzf6gTr0U2Slyrrtt2l1h09I552rIEQx4
 s9Yq/IzHKhCnF4/KsslyPH9eTtosgtTr2URw/Afe5zVxA+du6KxX0zYQOV8EaaP6+PDd
 n1yrXWZonSfJSyA7rqvbR7SzaQjlBhEN419wB4ARRyhsz/J9v5s18TMORrIXUUneTBEP
 wp7YwnSn8qmY7V1sdrDBU0ZMwB08P5wESLNTFwGVnvRE/WGXONETkh7WAeyP6JK1vHbs
 PEjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IreQ0jouyS/D8gYDCyS7jEiprNx5trWg2oesU5FoXa0=;
 b=Rnfg2cv2pEXXt52t7VzNBEbXwwVatW16XRr9M4iwkfxJRQgg0HuBmiCOAVb1D3f4Mr
 xHw1kS79HYsd1Hcd3nrucCsObpq1R+4fvmOHr1G1qwCZqLGuvS6UF9ziuT1jizqsagkd
 Jd1UDpyVC911sCJItnPR6BDcy1K1UbXM71cJvtyHQqaZs1DXVHL3rAGsKrp0lJWjXbCU
 5iXI5Jb/ptdQb3wvZ9JTKg3O6tmSmN+8sXoQRA+6nPYjQ/YO3bO9vtkL09mGrtgl2r4j
 V7JEW/yLKOIOIWC53YgIV/cIAPY59m9RSDrlgIg99dd+EspwNEVCdSGmx/sHSXFAShYc
 Ah5Q==
X-Gm-Message-State: APjAAAUtQ0XxA0iwXV8/vbV4MO1wmbmHAmcdSIp/ZFp5IikHDMDVVBc/
 OmVdw8SFxZwmBoGguOnG0cbvsXlaznStbWnaU7w=
X-Google-Smtp-Source: APXvYqya3InPUbrIUL9K9lKgI8RlOhW4WAY+VMsSEUDEi0+OnTaqCKNfwyYxiJQa7n6joA4vDFzQscK5snCHLXTeXkE=
X-Received: by 2002:aca:4202:: with SMTP id p2mr2741707oia.169.1556631150997; 
 Tue, 30 Apr 2019 06:32:30 -0700 (PDT)
MIME-Version: 1.0
References: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
 <CAGngYiVDFL1fm2oKALXORNziX6pdcBBNtp7rSnj_FBdr6u4j5w@mail.gmail.com>
 <20190430022238.GA22593@osadl.at> <20190430030223.GE23075@ZenIV.linux.org.uk>
 <20190430033310.GB23144@osadl.at> <20190430041934.GI23075@ZenIV.linux.org.uk>
In-Reply-To: <20190430041934.GI23075@ZenIV.linux.org.uk>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 30 Apr 2019 09:32:20 -0400
Message-ID: <CAGngYiVSg86X+jD+hgwwrOYX82Fu3OWSLygwGFzyc9wYq6AesQ@mail.gmail.com>
Subject: Re: [PATCH V2] staging: fieldbus: anybus-s: force endiannes annotation
To: Al Viro <viro@zeniv.linux.org.uk>
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
 Nicholas Mc Guire <der.herr@hofr.at>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nicholas Mc Guire <hofrat@osadl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 30, 2019 at 12:19 AM Al Viro <viro@zeniv.linux.org.uk> wrote:
>
> ... not that there's much sense keeping ->fieldbus_type in host-endian,
> while we are at it.

Interesting! Suppose we make device->fieldbus_type bus-endian.
Then the endinan-ness conversion either needs to happen in
bus_match() (and we'd have to convert endianness each time
this function is called).
Or, we make driver->fieldbus_type bus-endian also, then there
is no need for conversion... but the driver writer has to remember
to specify this in bus endianness:

static struct anybuss_client_driver profinet_driver = {
        .probe = ...,
        .fieldbus_type = endian convert?? (0x0089),
};

Which pushes bus implementation details onto the
client driver writer? Also, how to convert a constant
to a specific endianness in a static initializer?

You never make a remark without good reason, so what
am I overlooking?
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
