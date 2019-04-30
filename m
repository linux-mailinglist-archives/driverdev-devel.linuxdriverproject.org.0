Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F25D2FB6D
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 16:26:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3735D85EBB;
	Tue, 30 Apr 2019 14:26:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CgTZhlVKyZlA; Tue, 30 Apr 2019 14:26:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16BC285E79;
	Tue, 30 Apr 2019 14:26:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8DFDF1BF361
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 14:26:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8AA7385E79
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 14:26:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kTM8VvYWSPP6 for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 14:26:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8211D85531
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 14:26:45 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id n187so11375392oih.6
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 07:26:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=M/LjxNq7HqcE4VRT2agDFK9XNaV7Csanx3gBGZ037XE=;
 b=vIhSjwu1EAwHvUvrgR1nv0zrga9vDgMtL3meLUWVuexpKUwIJIk3nESWdlRqmdMePc
 tCnp96IPqjvgL9aisKHK6CmTFk8CKiXwBDoEo+dIoC1FooKZ7aP0x92I4Bd0R7zuj9Ic
 CT1i027kpsFWtI/r1URiu9ZUh4H7dFJmf7Bw9ME9rUA7jitm+M79CiDcrS9s9eP8zfJY
 AQInHKnvqTwnw0UUpegLr4PqQGwsfe3cJ6Ze7K5VGMQgoYzl5ilDqXphA+6U7sor/Uh3
 2p+k9Azj+OWb9m0vYs9lo8nHyDyjrWg++OUuKaXN2SCo10G+yvtmXPzfio5MSccMYZcO
 G5Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=M/LjxNq7HqcE4VRT2agDFK9XNaV7Csanx3gBGZ037XE=;
 b=cEp7x92RdzI0V+U8o+Vz6rCUTkX1xU8hTZ0rSfnLr6ktPUBSUgqSOMqFFKbqnHctvW
 nhdBxVKEYZ3hKoL5pH0ekvCji41vNB9DIIiG8INLOxjZTo9Bsgf29a/vLYo/r9dC/BUK
 LVMLu6PQirUTmSIyUbKpHXbJHeYcBxbn4sgRN7F+fkudVv2U/OVtwSudPpSRqkyQyrAP
 PcUpga8X/qrM2SApMtaaoyVOxKWWLI3GKf9Ml5i23pFdDXsZe2u2iettbogCLhRmWGbR
 qIeFGEac9gzcXQ7n8Be5TJ17of88s5WIIG0BFK5zRVE20Nt/d8ZKPp7/qeuf4rJaNZUi
 8xog==
X-Gm-Message-State: APjAAAUpqOtTH3PzFNnrEyPwNwmJMmTc0y2l9sFIiaudbSP33/9svGJ5
 UkXzp95etW7gljGz6VD2VcgG2tuc0XfWX+ReNmI=
X-Google-Smtp-Source: APXvYqyD26sEQFKVWSiVTMpA63i6t1Tph2LypIrP3KSbj45dx+ti8S7azt58i5F8S8PaJ767U/zMlGxSu0qbgVRvCQ4=
X-Received: by 2002:aca:4202:: with SMTP id p2mr2912687oia.169.1556634404727; 
 Tue, 30 Apr 2019 07:26:44 -0700 (PDT)
MIME-Version: 1.0
References: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
 <CAGngYiVDFL1fm2oKALXORNziX6pdcBBNtp7rSnj_FBdr6u4j5w@mail.gmail.com>
 <20190430022238.GA22593@osadl.at> <20190430030223.GE23075@ZenIV.linux.org.uk>
 <20190430033310.GB23144@osadl.at> <20190430041934.GI23075@ZenIV.linux.org.uk>
 <CAGngYiVSg86X+jD+hgwwrOYX82Fu3OWSLygwGFzyc9wYq6AesQ@mail.gmail.com>
 <20190430140339.GA18986@kroah.com>
 <CAGngYiXbSBuce2HmbHH4kUbe2ShgheML=bp+AJ-3O+FE+37ZRw@mail.gmail.com>
In-Reply-To: <CAGngYiXbSBuce2HmbHH4kUbe2ShgheML=bp+AJ-3O+FE+37ZRw@mail.gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 30 Apr 2019 10:26:33 -0400
Message-ID: <CAGngYiUfYxAaTRDc9HyWjcnuCHmosK=OqeV-nptRGgo=95GuBg@mail.gmail.com>
Subject: Re: [PATCH V2] staging: fieldbus: anybus-s: force endiannes annotation
To: Nicholas Mc Guire <der.herr@hofr.at>, Nicholas Mc Guire <hofrat@osadl.org>
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
 Al Viro <viro@zeniv.linux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 30, 2019 at 10:22 AM Sven Van Asbroeck <thesven73@gmail.com> wrote:
>
> Ah ok, it's like a standard way of implementing a bus. Sounds good, I'll
> spin a patch to conform to it. And while I'm at it, I'll rename fieldbus_type
> because it can be confused with another fieldbus_type within the
> fieldbus_dev core.

Nicholas, this future patch will silence sparse. So you can drop the
patch you proposed at the beginning of this email thread.

Thanks for your help, really appreciate it.
Sven
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
