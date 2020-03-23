Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B2618F266
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Mar 2020 11:11:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8FBF986278;
	Mon, 23 Mar 2020 10:10:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B0VDei8OgRHF; Mon, 23 Mar 2020 10:10:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 51A1F854AF;
	Mon, 23 Mar 2020 10:10:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A37E1BF375
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 10:10:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 96CDA85992
 for <devel@linuxdriverproject.org>; Mon, 23 Mar 2020 10:10:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUedbqukcA6Z for <devel@linuxdriverproject.org>;
 Mon, 23 Mar 2020 10:10:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f66.google.com (mail-pj1-f66.google.com
 [209.85.216.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 063DA854AF
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 10:10:56 +0000 (UTC)
Received: by mail-pj1-f66.google.com with SMTP id o12so2127784pjs.2
 for <devel@driverdev.osuosl.org>; Mon, 23 Mar 2020 03:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KtTMpqs9OxKiRBs03AEs96J80S/zGsASR4PrhyjUT3A=;
 b=JZP4wzo4beoMLxJBVLD/QqEBPBZ9t86h31Hqm0XEpkowrEuxOcX8dj6NyNLj5Ftuiu
 tEhDThHONyVZlBcr0m5KZGtwpKfyKMt+G9GXRLkbWr1n2BHn98e7RlwoZcj8g2ZDMHtb
 Cii6j1xhq1kgahgrPUPDy86ZpkOZTeSDut3ZrZIYJuWJ6etSgrk5fMT6hqYVpHTGFPz5
 z4kmP6O5p7egkw535XP4FlNQxFzjt/xfmACvT3tKbR242P7RtbwtX/chbsn9TiYRUYYZ
 y9fEPjYiq0YoiZ9zFEOCsalnYHamo9RQYHSJ7ngv8Wlrn+/G2bhPbS/KJ5VgcjinZ9zV
 J9lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KtTMpqs9OxKiRBs03AEs96J80S/zGsASR4PrhyjUT3A=;
 b=drsColPN0Z5X13YfGt2NEr4CUDS6Fa/BKzNN2eV5RAqsL/HeH01trsyN6YuDtgvJ19
 ek+I2YJtHrw+Xz6MMLEpx1AvGSiEWbfnLx/hg3rZz2a3BExVDvnbzPKo/eSK6upAQ+HN
 7+tvlo3rLyBbeoXbAd7lpfJlvu3bnx8RWxTUWAzXpbVybiFV8k0UDcnvL/DWWP9jnU4Z
 gkgrlRv/aYDGti9BZ6LrLNkDZZIbp1IWEF9UT5ajr8GGSizgeywX7kRcpRshmGh79qIr
 1wGXUMaPD4L5KG+2DPIlzqxDbokm0uM2rzAAyw0NqXkKzuAbhkf6C1wSmQ6lWieVcKUg
 uO+w==
X-Gm-Message-State: ANhLgQ0NgX/kriRualZE0Q0bXOgsite4GWQgydAsI6zsm1g2Cqrhz5G1
 wQO4Cumfa065do4ArX4IKHc=
X-Google-Smtp-Source: ADFU+vuPoiqWwisjPAoCIttzhpLDzm2VizcxjgFE+lCnRbRoBCM28zxGYhryGBQ2V95/fyLzj9RtpA==
X-Received: by 2002:a17:90a:5d16:: with SMTP id
 s22mr18751427pji.184.1584958255380; 
 Mon, 23 Mar 2020 03:10:55 -0700 (PDT)
Received: from Shreeya-Patel ([1.23.93.222])
 by smtp.googlemail.com with ESMTPSA id z16sm11851197pjt.40.2020.03.23.03.10.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 23 Mar 2020 03:10:54 -0700 (PDT)
Message-ID: <24a7d4a5b2595326f61082cbe5220ed73e9c27e9.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 01/11] Staging: rtl8188eu: hal_com:
 Add space around operators
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Date: Mon, 23 Mar 2020 15:40:50 +0530
In-Reply-To: <20200323020425.62dbeebb@elisabeth>
References: <cover.1584826154.git.shreeya.patel23498@gmail.com>
 <19950c71482b3be0dd9518398af85e964f3b66b1.1584826154.git.shreeya.patel23498@gmail.com>
 <20200322112744.GC75383@kroah.com>
 <e40d49aaa96a61019804255c2990d229b2eef7dc.camel@perches.com>
 <f2b4f7f38a8a490ffc917f7199099ac95656c8c2.camel@gmail.com>
 <20200323020425.62dbeebb@elisabeth>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
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
Cc: devel@driverdev.osuosl.org, Greg KH <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 Joe Perches <joe@perches.com>, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, 2020-03-23 at 02:04 +0100, Stefano Brivio wrote:
> Hi Shreeya,
> 
> On Mon, 23 Mar 2020 04:48:08 +0530
> Shreeya Patel <shreeya.patel23498@gmail.com> wrote:
> 
> > On Sun, 2020-03-22 at 08:09 -0700, Joe Perches wrote:
> > > On Sun, 2020-03-22 at 12:27 +0100, Greg KH wrote:  
> > 
> > Hi Greg and Joe,
> > 
> > > > On Sun, Mar 22, 2020 at 03:51:13AM +0530, Shreeya Patel
> > > > wrote:  
> > > > > Add space around operators for improving the code
> > > > > readability.
> > > > > Reported by checkpatch.pl
> > > > > 
> > > > > git diff -w shows no difference.
> > > > > diff of the .o files before and after the changes shows no
> > > > > difference.  
> > > > 
> > > > There is no need to have these two lines on every changelog
> > > > comment
> > > > in
> > > > this series :(  
> > > 
> > >   
> > 
> > Yes I get that.
> > 
> > > In my opinion, there's no need for a series here.
> > > 
> > > Whitespace only changes _should_ be done all at once.
> > > 
> > > Whitespace changes _could_ have changed string constants.
> > > 
> > > So noting that the patch in only whitespace and that
> > > there isn't a difference in object files is useful as
> > > it shows any change has been compiled and tested.
> > >   
> > 
> > Joe, I feel the same thing, there is no need of a patch series
> > for it but I was given a suggestion that it becomes difficult for
> > the
> > reviewers to review the patch so it is good to send a patchset
> > instead.
> 
> In this case, reviewing the 224 lines you're touching in one shot
> feels
> the same as reviewing them over 11 patches, as the change is always
> of
> the same type. Maybe a single patch is actually even a bit quicker to
> review.
> 
> Are you sure the suggestion was referring to this, and it wasn't
> about
> different type of changes in the same patch?
> 
Yes I am sure about it. But anyway I will send a single patch for these
changes now.

Thanks Stefano :)


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
