Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C890F1CE0A
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 May 2019 19:31:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 360B430C59;
	Tue, 14 May 2019 17:31:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PPcT25isW4-J; Tue, 14 May 2019 17:31:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D74022FCEC;
	Tue, 14 May 2019 17:31:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0DA411BF5F5
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0A31E860C1
 for <devel@linuxdriverproject.org>; Tue, 14 May 2019 17:31:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wiK7PTj9YAQW for <devel@linuxdriverproject.org>;
 Tue, 14 May 2019 17:31:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
 [209.85.210.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3349686099
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 17:31:25 +0000 (UTC)
Received: by mail-ot1-f66.google.com with SMTP id u11so5598867otq.7
 for <devel@driverdev.osuosl.org>; Tue, 14 May 2019 10:31:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ErzBDF5ta8fy4S6axV5usgeVf1icUMn3T8UVynCsAWs=;
 b=HryJhO6U6bs1T7WPbXVtLG1szuyShT1gbaG+wzn1LkNA9a4KBxmIFHHq96/8+dfNAC
 wfkT/GnEk85/IDGKpcVkzt/QE53qwZ5JjKiI3w8NqQ3xAu+fjWS/bqpW+ZQ70HKhMqH6
 /0AZAqks7K4b9NhUixz+vE5lUS+B0JGTYZ4iwqnNeyrqibmwoIM5wr7VH7lr+d8de7Tw
 f+FwPXvxe3QkjhsKIwBQHtUx18QfSXIe25slWeOieGrQbCV3LahThSSMh/sYqLCmH4IU
 gthP7wS+cisRcf6qvg8+55ttwuRIJQU2K7KpxEnf+a4JoaW0+vdz5sUowDCtcg+BwuAx
 a8QA==
X-Gm-Message-State: APjAAAV3d+i8IFBpJh1evdNFmB9RYKjTwBxw5QuWl2sR4oIpJHMctLho
 yqCYbSmjsSPxHtKBaKDHZEw=
X-Google-Smtp-Source: APXvYqxkxGAxP4ZnVEYXQ1pF+uY0YgUE1LJnsi3HHxrq+TOlnXkjSIbH/bnYS6xVvJ3PilYfe8glmw==
X-Received: by 2002:a9d:362:: with SMTP id 89mr4306623otv.17.1557855084265;
 Tue, 14 May 2019 10:31:24 -0700 (PDT)
Received: from sultan-box.localdomain ([107.193.118.89])
 by smtp.gmail.com with ESMTPSA id m25sm6357027otp.81.2019.05.14.10.31.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 10:31:23 -0700 (PDT)
Date: Tue, 14 May 2019 10:31:19 -0700
From: Sultan Alsawaf <sultan@kerneltoast.com>
To: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [RFC] simple_lmk: Introduce Simple Low Memory Killer for Android
Message-ID: <20190514173119.GA19142@sultan-box.localdomain>
References: <20190319231020.tdcttojlbmx57gke@brauner.io>
 <20190320015249.GC129907@google.com>
 <20190507021622.GA27300@sultan-box.localdomain>
 <20190507153154.GA5750@redhat.com>
 <20190507163520.GA1131@sultan-box.localdomain>
 <20190509155646.GB24526@redhat.com>
 <20190509183353.GA13018@sultan-box.localdomain>
 <20190510151024.GA21421@redhat.com>
 <20190513164555.GA30128@sultan-box.localdomain>
 <20190514124453.6fb1095d@oasis.local.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514124453.6fb1095d@oasis.local.home>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>,
 Daniel Colascione <dancol@google.com>, kernel-team <kernel-team@android.com>,
 Todd Kjos <tkjos@android.com>, Kees Cook <keescook@chromium.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Tim Murray <timmurray@google.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm <linux-mm@kvack.org>,
 Arve =?iso-8859-1?B?SGr4bm5lduVn?= <arve@android.com>,
 Ingo Molnar <mingo@redhat.com>, Martijn Coenen <maco@android.com>,
 Joel Fernandes <joel@joelfernandes.org>, Andy Lutomirski <luto@amacapital.net>,
 Suren Baghdasaryan <surenb@google.com>,
 Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Tue, May 14, 2019 at 12:44:53PM -0400, Steven Rostedt wrote:
> OK, this has gotten my attention.
> 
> This thread is quite long, do you have a git repo I can look at, and
> also where is the first task_lock() taken before the
> find_lock_task_mm()?
> 
> -- Steve

Hi Steve,

This is the git repo I work on: https://github.com/kerneltoast/android_kernel_google_wahoo

With the newest simple_lmk iteration being this commit: https://github.com/kerneltoast/android_kernel_google_wahoo/commit/6b145b8c28b39f7047393169117f72ea7387d91c

This repo is based off the 4.4 kernel that Google ships on the Pixel 2/2XL.

simple_lmk iterates through the entire task list more than once and locks
potential victims using find_lock_task_mm(). It keeps these potential victims
locked across the multiple times that the task list is iterated.

The locking pattern that Oleg said should cause lockdep to complain is that
iterating through the entire task list more than once can lead to locking the
same task that was locked earlier with find_lock_task_mm(), and thus deadlock.
But there is a check in simple_lmk that avoids locking potential victims that
were already found, which avoids the deadlock, but lockdep doesn't know about
the check (which is done with vtsk_is_duplicate()) and should therefore
complain.

Lockdep does not complain though.

Sultan
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
