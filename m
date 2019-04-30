Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B804FB4F
	for <lists+driverdev-devel@lfdr.de>; Tue, 30 Apr 2019 16:23:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 77365869E6;
	Tue, 30 Apr 2019 14:22:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id k6zkOb50rNdO; Tue, 30 Apr 2019 14:22:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6686886776;
	Tue, 30 Apr 2019 14:22:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FF441BF33A
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 14:22:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4D7BE221B7
 for <devel@linuxdriverproject.org>; Tue, 30 Apr 2019 14:22:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pMx2mSV8lK08 for <devel@linuxdriverproject.org>;
 Tue, 30 Apr 2019 14:22:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
 [209.85.210.67])
 by silver.osuosl.org (Postfix) with ESMTPS id D1C662155F
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 14:22:54 +0000 (UTC)
Received: by mail-ot1-f67.google.com with SMTP id w6so12054643otl.7
 for <devel@driverdev.osuosl.org>; Tue, 30 Apr 2019 07:22:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GhLbsCh+7+3dT0yeAZbUcY/AwuBdniC8c1Doy2RANbs=;
 b=LCrcJ8GqxP81DA7QCA7VLz3LgfcMmrt5jZfwdg6KQT5IJtjVfMjw8a5ENUnbY4V2ij
 6n0+9c5ovtEZgIcDXqUDnatVZpQqCl2uNf41zOQjbrEDfTemi+w71bQA++j963lMO8G1
 /6X4cFT7Hi5vA4h9u+M4cyw421qbK6HJwDRx1yx1G+socY34I4ae0YFrQB1vu8IhzM0/
 ep8BmjeQFWT1KBmWQrnlCYaEaGsc2co7YFHaA1F4HFd/gzt+YKvoadVwDxK92vDT8TLG
 GN9DsHIsYcAqcNHkxChgwBu7b1xt7ZpmPccxx4i82KUfzpYQO957H9K8oae6sGtEA5L5
 3P/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GhLbsCh+7+3dT0yeAZbUcY/AwuBdniC8c1Doy2RANbs=;
 b=YvgiLw1wN3pnO8039elweHQn3+atFYRPb0CRqOyCfSTIcjQCTfVjmXWtRrJr6O0EqS
 gRQkqx9rCAc6yLvJS6zsu/mYkSN/fjtwbClL2G7aJrKFT4/hzq36m0m5LTGHxbsAF4s0
 U0vAEhh4J3zuH9USrzHr+PPLV17Uyz1WU7/IDrpEAuxeVPhGQJqdhgoRnFXDU1tnSYN3
 LIZ1CFKXfzY1xMyYHjwSb6k/FV8BvcwqJ5Mnw7yV8aCZP6xlBvZGpOwphJYmoepUW60l
 XD/yRwuwVwpphOa/KNLO6FjkxMwqR8xvohKc0pS9LimYDL8kBHDT8Yu07pTRIgRF0YMP
 yT5g==
X-Gm-Message-State: APjAAAUiUgTos1/t0KxuWrqbQJM3OSZHkT8DxXeTaFtgt3a7LebOp3zY
 OR8pNfBhTBu/EqgGficDAeAuXFHPSdKfJhZmhds=
X-Google-Smtp-Source: APXvYqyEHmAehKZR1imvGsb8Kcy0DWzhy/Ln6QcqM8WmdKbxc6yx1si6SIMEV9sm/IfM6bunmGW7SK5AOOSBXMRPo2M=
X-Received: by 2002:a9d:6318:: with SMTP id q24mr2794428otk.95.1556634173787; 
 Tue, 30 Apr 2019 07:22:53 -0700 (PDT)
MIME-Version: 1.0
References: <1556517940-13725-1-git-send-email-hofrat@osadl.org>
 <CAGngYiVDFL1fm2oKALXORNziX6pdcBBNtp7rSnj_FBdr6u4j5w@mail.gmail.com>
 <20190430022238.GA22593@osadl.at> <20190430030223.GE23075@ZenIV.linux.org.uk>
 <20190430033310.GB23144@osadl.at> <20190430041934.GI23075@ZenIV.linux.org.uk>
 <CAGngYiVSg86X+jD+hgwwrOYX82Fu3OWSLygwGFzyc9wYq6AesQ@mail.gmail.com>
 <20190430140339.GA18986@kroah.com>
In-Reply-To: <20190430140339.GA18986@kroah.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Tue, 30 Apr 2019 10:22:42 -0400
Message-ID: <CAGngYiXbSBuce2HmbHH4kUbe2ShgheML=bp+AJ-3O+FE+37ZRw@mail.gmail.com>
Subject: Re: [PATCH V2] staging: fieldbus: anybus-s: force endiannes annotation
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, Nicholas Mc Guire <hofrat@osadl.org>,
 Nicholas Mc Guire <der.herr@hofr.at>, Al Viro <viro@zeniv.linux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Apr 30, 2019 at 10:03 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> Keep it bus-endian, as that's the "normal" way bus structures work (like
> PCI and USB for example), and that should be in a documented, and
> consistent, form, right?
>
> Then do the conversion when you access the field from within the kernel.

Ah ok, it's like a standard way of implementing a bus. Sounds good, I'll
spin a patch to conform to it. And while I'm at it, I'll rename fieldbus_type
because it can be confused with another fieldbus_type within the
fieldbus_dev core.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
