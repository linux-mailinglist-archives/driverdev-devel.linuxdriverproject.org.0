Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D169F7570
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Nov 2019 14:51:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2F9A6863AE;
	Mon, 11 Nov 2019 13:51:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hiji6YwvGnQ2; Mon, 11 Nov 2019 13:51:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D5F57862DB;
	Mon, 11 Nov 2019 13:51:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2BC211BF3DE
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 13:51:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2845C8245D
 for <devel@linuxdriverproject.org>; Mon, 11 Nov 2019 13:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wMc10EPtraP for <devel@linuxdriverproject.org>;
 Mon, 11 Nov 2019 13:51:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 5BD93821EF
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 13:51:46 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id w9so7924331wrr.0
 for <devel@driverdev.osuosl.org>; Mon, 11 Nov 2019 05:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=izNeXsLo3977cjjoeFa+PfRnLFlgVVkBlxrUA54lBXw=;
 b=r7eVHomvCFzVgSqaPu00nXlvsu2CmwhRGSy/9iohJdDJnBVol4Z+rDZ7ZdiOUSHPbu
 sb90/axg4jjubaawE429G6djgMnsbeU3QMfxKqPZ5Xq98wAs2ruK3K8okUopoAeJ5QXU
 wCH+aBFH+PsJN8z7qTvhQlL8Ce3Vkpp4anXY9Yq1ywIxMBwppeGuKbHKHv+DrTr487he
 o00mIMeeDqkD72OThJggPoj69+Cyi/sJ03CRp2FieaQZnvh4bCEsiSoEfPXNM+Kbuevv
 tRXplBisRWKXLkp+Njtvtmw0k7U+vLOZR1lSsKjNHwDVyd5/4qEZzzHHNFK0qMGhdPL1
 CvWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=izNeXsLo3977cjjoeFa+PfRnLFlgVVkBlxrUA54lBXw=;
 b=Wu+H5UCizyrPTvOgGKgWpmeVokL6hUmZewaNwrNZ1zulkLOFw3skYBt3ktnijgjQMH
 4kkwvfzmY3iWOay1AOjYVRB/VvVz9hp7hTX+hHdDfwRcfM5ncsD2yVoBQbWvgXWqxuje
 iJhx/ptnVepe8zlWHMeAlDZRcB9Tu4QSKz4GKSlQLS1NRfsp3L53pqkIw0SSXz58uS9j
 f63g+5JI4KOKnwh6nYVD+WI1XXOFp+W+0SwM0P3v1a0jh4SHihlUX86Awz4/pMjJ7AeY
 lFVlt5r+2hlM/RgQGE8ROnQTEz8QwvzynLY/cMvqrybJ9nSwDp0vH5vOxbgozQcsJHW9
 O9iQ==
X-Gm-Message-State: APjAAAWnj+hIGr2OBnhxYeMVHe3mVqKiNSJZ7vzQIDGTTc/Dd69IsmQ0
 zmC1GrMh0p6RE1oY/Tn7yQ==
X-Google-Smtp-Source: APXvYqxCQFT7SyzScJu8SHd3WkubL0M0n53zH1agqu9W+57Nbeeq21fbjboyYJHzMYczlKpnjcSMMA==
X-Received: by 2002:adf:f44a:: with SMTP id f10mr5537827wrp.63.1573480304688; 
 Mon, 11 Nov 2019 05:51:44 -0800 (PST)
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com.
 [79.73.36.243])
 by smtp.gmail.com with ESMTPSA id a7sm16513703wrr.89.2019.11.11.05.51.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Nov 2019 05:51:44 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Mon, 11 Nov 2019 13:51:33 +0000 (GMT)
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH] staging: wfx: add gcc extension __force cast
In-Reply-To: <20191109091913.GV26530@ZenIV.linux.org.uk>
Message-ID: <alpine.LFD.2.21.1911111347380.226731@ninjahub.org>
References: <20191108233837.33378-1-jbi.octave@gmail.com>
 <20191109091913.GV26530@ZenIV.linux.org.uk>
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Boqun.Feng@microsoft.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>



On Sat, 9 Nov 2019, Al Viro wrote:

> On Fri, Nov 08, 2019 at 11:38:37PM +0000, Jules Irenge wrote:
> > Add gcc extension __force and __le32 cast to fix warning issued by Sparse tool."warning: cast to restricted __le32"
> >
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/wfx/debug.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/wfx/debug.c b/drivers/staging/wfx/debug.c
> > index 0a9ca109039c..aa7b2dd691b9 100644
> > --- a/drivers/staging/wfx/debug.c
> > +++ b/drivers/staging/wfx/debug.c
> > @@ -72,7 +72,7 @@ static int wfx_counters_show(struct seq_file *seq, void *v)
> >  		return -EIO;
> >  
> >  #define PUT_COUNTER(name) \
> > -	seq_printf(seq, "%24s %d\n", #name ":", le32_to_cpu(counters.count_##name))
> > +	seq_printf(seq, "%24s %d\n", #name ":", le32_to_cpu((__force __le32)(counters.count_##name)))
> 
> NAK.  force-cast (and it's not a gcc extension, BTW - it's sparse) is basically
> "I know better; the code is right, so STFU already".  *IF* counters.count_...
> is really little-endian 32bit, then why isn't it declared that way?  And if
> it's host-endian, you've just papered over a real bug here.
> 
> As a general rule "fix" doesn't mean "tell it to shut up"...
> 

Thanks for the comments, I have updated  but I have a mixed mind on the 
__le32. I have to read more about it. 

I would appreciate if you can comment again on the update.
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
