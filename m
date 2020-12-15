Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 387152DB672
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Dec 2020 23:20:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1DB0620489;
	Tue, 15 Dec 2020 22:20:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yR25TnE1hDFh; Tue, 15 Dec 2020 22:20:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 11F44203A8;
	Tue, 15 Dec 2020 22:20:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1071BF5DB
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 22:20:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2564386BA8
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 22:20:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mwoapqhH5r6z for <devel@linuxdriverproject.org>;
 Tue, 15 Dec 2020 22:20:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3414B86BA1
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 22:20:46 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id l11so43476731lfg.0
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 14:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=RLkwiClWiZEufd757VnQ12gJprYkp+uUjzIoU0sN1IY=;
 b=RqsSk46kiv+oauJQZjgoCDxigw8xhGRze+AVMrO9n70VxeBAWsZC8s+tj0XEThYaLy
 E7tNVqy6MPxOrgIG0sk6lwgqMqzCdaiCFrqsevKcuF3sPMZ3aBTF5Db7NTlQUXzcbAo/
 RdT6UQdkjsTSOnU+GNvLW9+vdESzy8j9xYsiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=RLkwiClWiZEufd757VnQ12gJprYkp+uUjzIoU0sN1IY=;
 b=FDe0w2UKkigB+x0iyJw/Q+xBiLsgpDERq3UqiQCAuS3tT1ZMTn18AFI2ai4gQqeTSO
 vN9RcSP995mggVUhhUN8UbdkCamEp+a6aNW+zl4GOaWbvomtnfSQTAtwlviIVn3joiJz
 +ytazo/uqywlpboCscj8s/TDqE9L+i3vsNtGXRwshXZJgVvatvj8tlUqG9Yo7sEOsRwI
 7PBXM4WHN/OiIgwy/a9MTon6yzJOzQbkBQ1S7X2uhayIVDxb5jaH0g2qNmqmRs/xiXo9
 UB/NTlXfPAvAKu66FHSjng8j+zU5hZ0ARPStF20ocmNFrfcJhLtE3frp/DKOBD+rDabO
 vLOg==
X-Gm-Message-State: AOAM5329RtABoB6+AhhfCL+AarH9FmRqiTFL8hMu9ODd5noEViZ1JrWT
 i9esgeCGS7df1mfgqUeBYzOGtuvhod1KAA==
X-Google-Smtp-Source: ABdhPJzqLofnaJtoP+/6JFeutYcjvJOgT7RGwWoXilVoBWZizxhxy58J7X9SNZZZ9UL/5f55DE7CFA==
X-Received: by 2002:a2e:88c8:: with SMTP id a8mr13138015ljk.148.1608070843977; 
 Tue, 15 Dec 2020 14:20:43 -0800 (PST)
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com.
 [209.85.167.51])
 by smtp.gmail.com with ESMTPSA id y20sm8016lji.86.2020.12.15.14.20.43
 for <devel@linuxdriverproject.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Dec 2020 14:20:43 -0800 (PST)
Received: by mail-lf1-f51.google.com with SMTP id m12so43467725lfo.7
 for <devel@linuxdriverproject.org>; Tue, 15 Dec 2020 14:20:43 -0800 (PST)
X-Received: by 2002:a2e:3211:: with SMTP id y17mr6681510ljy.61.1608070842610; 
 Tue, 15 Dec 2020 14:20:42 -0800 (PST)
MIME-Version: 1.0
References: <X9iNTajXvwiLa1bV@kroah.com>
 <20201215223752.42c377d7@canb.auug.org.au>
 <X9iiwr5Lf8l8TOpP@kroah.com>
In-Reply-To: <X9iiwr5Lf8l8TOpP@kroah.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 15 Dec 2020 14:20:26 -0800
X-Gmail-Original-Message-ID: <CAHk-=wiu-UMhJZEUM4u+6OyMh=i8Y2RPzqd+W=JArEwhUAHG8w@mail.gmail.com>
Message-ID: <CAHk-=wiu-UMhJZEUM4u+6OyMh=i8Y2RPzqd+W=JArEwhUAHG8w@mail.gmail.com>
Subject: Re: [GIT PULL] Staging/IIO driver changes for 5.11-rc1
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, Dec 15, 2020 at 3:48 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> Linus, your call.

This showed up in my build testing and I fixed it in the merge. No
problem, but thanks to Stephen for tracking these things.

             Linus
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
