Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CED3C16C45
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 May 2019 22:33:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E99484461;
	Tue,  7 May 2019 20:33:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ttsMX9caJcOc; Tue,  7 May 2019 20:33:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DFAD0832C6;
	Tue,  7 May 2019 20:33:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9570D1BF363
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:33:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 92795858AF
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:33:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id av8OLPUldIgw for <devel@linuxdriverproject.org>;
 Tue,  7 May 2019 20:33:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 804E58569B
 for <devel@linuxdriverproject.org>; Tue,  7 May 2019 20:33:26 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id f23so15557013ljc.0
 for <devel@linuxdriverproject.org>; Tue, 07 May 2019 13:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CwOWrdjQnMEu1uy7KkVWTLmIn/O6jKGpZOEzU4R6ZiQ=;
 b=V+ldPyFPJsh0EzBs7Q5P6t6eRuhwd2Ek6kLnmwqNlQOn8NUqVWxfGfhPQQqq4J/djQ
 A7C8uCUMIFAoLahIHJIACf5KgxJDeC4GCUvtrKUfbQbUOQ721S3SuX+KLBiRwSK2uP57
 oZvvllEFipC7USVFAHRebaOzsml54iB4snRdE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CwOWrdjQnMEu1uy7KkVWTLmIn/O6jKGpZOEzU4R6ZiQ=;
 b=a9NcZ53U7ethB/lP5VeXyRbbSpg0O6CefUBLrnO8R/ZuVLIf08cSbh+Cnspf/zfhEP
 cslbiOuChcJZlB9noVgaLIksG3Xw2+1vEK40it6UPD1cRjAn+vCHsBNsugH/GoYj0bg9
 4XR3crJ9h8P4CeFXtORBo0KObKdmwpJJxeSYEIxM2L293yGfO9753emm0XGfD9dmfSVg
 0awUAm/mhD4Su6l9SwD3NDAeauyJKzQ8VAthTmiJZWKCrxp/vNocpEfh9dRJcEBNQZ0i
 tdigXrD4D1FS/C8Dck0rOlF9hlhprYZ4LRT/O6F0A+tL6GvE4GJ49v1TG1PkJzr5L2yP
 AZeg==
X-Gm-Message-State: APjAAAWHLgz2VHX5l6L0sVKAe8B6qap09pNoWNluMAOeBxV/5jVp526J
 c6pAOVMiXwfoywU6FfmAvIUj8xEHiRA=
X-Google-Smtp-Source: APXvYqzmUJE1lnYem3N4zN4X/pEo8NT/6vWzFeTRHMOVjsbpeNB7aO50fbqDq3vLB5eanXXBuzCN+A==
X-Received: by 2002:a2e:81d0:: with SMTP id s16mr18457629ljg.145.1557261204007; 
 Tue, 07 May 2019 13:33:24 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com.
 [209.85.167.53])
 by smtp.gmail.com with ESMTPSA id p25sm4017992ljg.9.2019.05.07.13.33.22
 for <devel@linuxdriverproject.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 13:33:23 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id o16so12828110lfl.7
 for <devel@linuxdriverproject.org>; Tue, 07 May 2019 13:33:22 -0700 (PDT)
X-Received: by 2002:a19:ec07:: with SMTP id b7mr11977699lfa.62.1557261202165; 
 Tue, 07 May 2019 13:33:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190507175853.GA11568@kroah.com>
In-Reply-To: <20190507175853.GA11568@kroah.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 7 May 2019 13:33:06 -0700
X-Gmail-Original-Message-ID: <CAHk-=wg+w5+vAo1DQrprSG8APptZ5-Kek4NL_mnr9p08vFyQrg@mail.gmail.com>
Message-ID: <CAHk-=wg+w5+vAo1DQrprSG8APptZ5-Kek4NL_mnr9p08vFyQrg@mail.gmail.com>
Subject: Re: [GIT PULL] Staging/IIO driver patches for 5.2-rc1
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
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux List Kernel Mailing <linux-kernel@vger.kernel.org>,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 7, 2019 at 10:59 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> All of these have been in linux-next for a while with no reported
> issues, other than an odd gcc warning for one of the new drivers that
> should be fixed up soon.

Ok, that's truly a funky warning.

But since I don't deal well with warnings, particularly during the
merge window, I just fixed it up in the merge.

The fix is to simply not have a bitfield base type of "unsigned char",
and have it cross a char boundary. Instead the base type should just
be "unsigned int".

Of course, I couldn't test my change, but it shuts the compiler up,
and it very much looks like the right thing.

                Linus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
