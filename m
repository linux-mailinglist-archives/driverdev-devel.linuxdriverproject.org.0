Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 589FB1628E2
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Feb 2020 15:53:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B46A885C08;
	Tue, 18 Feb 2020 14:53:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NG-OZq53Bo8i; Tue, 18 Feb 2020 14:53:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3BC2B81BC9;
	Tue, 18 Feb 2020 14:53:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 103C11BF5DD
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 14:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0CF6C86096
 for <devel@linuxdriverproject.org>; Tue, 18 Feb 2020 14:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PwHqGO8nv4-G for <devel@linuxdriverproject.org>;
 Tue, 18 Feb 2020 14:53:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
 [209.85.167.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 6A25086094
 for <devel@driverdev.osuosl.org>; Tue, 18 Feb 2020 14:53:06 +0000 (UTC)
Received: by mail-oi1-f196.google.com with SMTP id r137so765952oie.5
 for <devel@driverdev.osuosl.org>; Tue, 18 Feb 2020 06:53:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y5uEoI57XOY6ZRdfdmdltCBU7PJAcGzi/Ern4gPqGrc=;
 b=UZvmgDrJe0khw8I7qihSDZldaXst0pVyvFGyQDvj2ibNt+djsNFBj96T1WAdA1/tEH
 FV9lbtw/bJdR63FQESVDt4goDdXQpr9egBgC7qrWlpIKofTGk/Z2xl4NmjWOAmaBzftH
 hZZoweM2nHZL3Qgtlef5MXDp4kcyuVtPy5OGn1PrkiJcbVTSmAHWNPnSB3bPGEX/RNZh
 +Q6c11HfNlKj1Ji6uF8c4eYg1kJGR9Wsk+AtaBHMOtEKM3mpbYVU0S263Zyjj4CixKJR
 9nWRINJ4zMZY+ORoj40pBb0Xngjm4ipo9htr7/IAlHREln43YOzGSiShHWSehjZsW37N
 ogdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y5uEoI57XOY6ZRdfdmdltCBU7PJAcGzi/Ern4gPqGrc=;
 b=keZn1kr25ugCl8GEHDjfq71sWrvQGEjeEUkdjpBp3LzP4JR6LXhS5BC0D0FcYG3H1z
 /x+7nKDMl3673I/LoTHmvbzSzv0IpU4sTEMCOBQULqaUVnUHqYKPr4UC5q18s0KxBnyT
 L6QyV+li5kaJTFaMixc6qOgLTj/AVVF6R4zo+m4r8xHCpzr6jlvGz0N21K47l6RIC4vt
 8sGn5ODHitR2oqBgmu92PygBRsXBWBSahPz3gojC2f6Q/Gzmwrses6dCpOQkMsc/17MF
 gYSnaBhFJNVp4jgU3kinjclKALst9+SFF3rN4ZzI6xy18yCP4CAhLrs7hyx2digTUiLI
 uNTQ==
X-Gm-Message-State: APjAAAXiKRa8aItsrqWY62EYt6Yq+bZhBYAWFNu5nTJqg+X0sEY+qZ6s
 P9VitzDuiKFXC9oYqGxEuONjEjzYWUQItDuKXleV0KBG
X-Google-Smtp-Source: APXvYqygnlPizIzAAMEZBSBc/0hMvzI2r85xzViLHN/96GfQQJgqId/A4IgG4FhIEwxEM6shdIVGPzJP4hZlWwOLf0Q=
X-Received: by 2002:a17:90a:8806:: with SMTP id
 s6mr2869351pjn.141.1582037100972; 
 Tue, 18 Feb 2020 06:45:00 -0800 (PST)
MIME-Version: 1.0
References: <20200213194001.130110-1-marcgonzalez@google.com>
 <20200217104026.GB19641@kadam>
In-Reply-To: <20200217104026.GB19641@kadam>
From: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
Date: Tue, 18 Feb 2020 09:44:50 -0500
Message-ID: <CAKvFj6qRtmU8tBbUY2i71dXJwTTQqA0NLT4nsje0E=dBP5p4cQ@mail.gmail.com>
Subject: Re: [PATCH] staging: vc04_services: Fix wrong early return in
 next_service_by_instance()
To: Dan Carpenter <dan.carpenter@oracle.com>
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, Feb 17, 2020 at 5:40 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, Feb 13, 2020 at 02:40:01PM -0500, Marcelo Diop-Gonzalez wrote:
> > If kref_get_unless_zero() fails, we should keep looking for the
> > next service, since the callers of this function expect that a NULL
> > return value means there are no more.
> >
> > Signed-off-by: Marcelo Diop-Gonzalez <marcgonzalez@google.com>
> > ---
>
> Please use a Fixes tag.
>
> Fixes: a2203cfe0d84 ("staging: vc04_services: don't increment service refcount when it's not needed")

Ah yeah, forgot about that!

>
> That way we know it doesn't need to be backported.
>
> regards,
> dan carpenter
>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
