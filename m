Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2049212E923
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Jan 2020 18:11:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2EDB8738B;
	Thu,  2 Jan 2020 17:11:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b4kMPEVgff2g; Thu,  2 Jan 2020 17:11:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1F86C8731A;
	Thu,  2 Jan 2020 17:11:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C194E1BF2B5
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 17:11:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B8DBF2050F
 for <devel@linuxdriverproject.org>; Thu,  2 Jan 2020 17:11:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mu45Z0q-7HIH for <devel@linuxdriverproject.org>;
 Thu,  2 Jan 2020 17:11:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 1F3FA20413
 for <devel@driverdev.osuosl.org>; Thu,  2 Jan 2020 17:11:25 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id c16so9064035ioh.6
 for <devel@driverdev.osuosl.org>; Thu, 02 Jan 2020 09:11:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d1MMlXuq3htz7xQ7iWdmoGeEmSyRhu55W8/gq9KRHHQ=;
 b=Ad5QPvBT+bhMSMl/yhQTiCs2ZfIFZSGj5torhMKJp3+K+RkfmFtOrEs+8tItSspEmJ
 E3Zcwl2KczWTRj3JTSUl9yarp0OrSjosI+jBI/+QpeI49GKVE4R0KL0iGmCeiGOKHrRj
 bsYpr3OqVBJCO2iuhLq9yJf+m8Niqw0QoNI5OptderZ/nB89QJTdmg7f8HJcykVEX8OJ
 nzkIuh81A97DC7+tNsKTjw3fB8tBMb5Y1rIfQsNTmonzOblJU/CbYgxrQ5vc8RLyjMng
 mdVuZGvxHSLB7XCQsKtph1OPW9gbcjKZaeelU3zSWdEwSk353E0onX7EvTR2BbPBmo4d
 FLzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d1MMlXuq3htz7xQ7iWdmoGeEmSyRhu55W8/gq9KRHHQ=;
 b=uX96IKaz19mGjQuGE0AFDHisX53gLKzCsjGjRiWzGzlqP+D1w5b4oDfwtGLY0LFYGz
 IaJUmqlLhb/pbsUm/kbl53roskrCD7TbBu5COcIgpARePaSVBcmeDC7umYaqCJHyeOqL
 dwoWa9gaWaBM1/x7mRa1a19L11XUToYI9/MakMe7a+nHNpPMSK1drpM9gzv943LlLk11
 xDicpjTFScgnnBt+mIHhtcDJdnamjJNnX5J/GCxt+Cls8rog62qbRZQgeyAJApG6ONw5
 BwZ0lGNVhvwpEYLythwYCjvJ1BBqJW81eVZ6KtO1BN1N6VYGtqLVpVYwH+t1DKhaOded
 fkfA==
X-Gm-Message-State: APjAAAXEopkXyxxiNez01q4Fq9OL4JW5797t7Tyxq3guL4wbnyfLoFy4
 QSe3PgSVSjgObbXhQKJBWki0OMSfTl54aoFOkas=
X-Google-Smtp-Source: APXvYqxfrZWMOqia5VgSeOJillPR5wML1uUsHwwzCrWJ/X5ZYOyWJ8czTmgr2ANtFO9iYhPJ55EbU3PR0uPFFa05dlg=
X-Received: by 2002:a5d:9499:: with SMTP id v25mr36156978ioj.66.1577985084454; 
 Thu, 02 Jan 2020 09:11:24 -0800 (PST)
MIME-Version: 1.0
References: <CA+saATVwyungoYC2WTZf7j=kp8YXbDGJ44DOWNePiK9VeLOETQ@mail.gmail.com>
 <20200102163442.GA177909@kroah.com>
In-Reply-To: <20200102163442.GA177909@kroah.com>
From: Marcelo Diop-Gonzalez <marcelo827@gmail.com>
Date: Thu, 2 Jan 2020 12:11:13 -0500
Message-ID: <CA+saATX2vahe_Jx7NEQy+mq4mg4r_vooOvsKf2GNjJK=VErsbQ@mail.gmail.com>
Subject: Re: minor bug report in staging/vc04_services/
To: Greg KH <gregkh@linuxfoundation.org>
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
Cc: devel@driverdev.osuosl.org, linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu, Jan 2, 2020 at 11:34 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Thu, Jan 02, 2020 at 11:24:09AM -0500, Marcelo Diop-Gonzalez wrote:
> > Hi, I noticed couple minor bugs while looking around in
> > drivers/staging/vc04_services/*:
> >
> > 1. When opening "/dev/vchiq", vchiq_debugfs_add_instance() adds a debugfs
> > directory named after the tgid of the process who opened the file. But
> > there will be collisions if you try opening it multiple times from the same
> > process.
>
> Odd, but shouldn't cause any problems as no code paths should care if
> debugfs works or not, it's only for debugging :)
>
> > 2. In vchiq_dump_platform_instances(), called from vchiq_read(), each
> > instance's ->mark member is used to track whether it's been printed
> > already, but two concurrent readers could stomp on each other (causing one
> > of them to see fewer instances than actually exist), since a field in the
> > vchiq_instance struct itself is being modified with no
> > locking/synchronization
> >
> > I didn't want to send any patches out since I'm not sure if/how people
> > would want to fix these, but thought I'd point them out.
>
> Patches are always best, please feel free to submit to help resolve
> these.
>
sounds good!
> thanks,
>
> greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
