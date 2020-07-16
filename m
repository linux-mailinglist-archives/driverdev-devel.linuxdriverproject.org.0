Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EACD22245D
	for <lists+driverdev-devel@lfdr.de>; Thu, 16 Jul 2020 15:54:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B858E230ED;
	Thu, 16 Jul 2020 13:54:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id daDwTDhuql5U; Thu, 16 Jul 2020 13:54:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 45CB62052B;
	Thu, 16 Jul 2020 13:54:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 084231BF3EE
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 13:54:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 02FA2886E3
 for <devel@linuxdriverproject.org>; Thu, 16 Jul 2020 13:54:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QzVn0MlNqkWL for <devel@linuxdriverproject.org>;
 Thu, 16 Jul 2020 13:54:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 297948AD99
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 13:54:49 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 22so10391498wmg.1
 for <devel@driverdev.osuosl.org>; Thu, 16 Jul 2020 06:54:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=65QcCnpAmDce81oUaFA3QmWLjs//tlPa4Tv3XmT8+FQ=;
 b=OLkCkq54Rj1wVrDXBO78Smeab0KBRpwvfSt4ygh/CleWLCTQZnQoe5BE6VK4rMUPzU
 CbGGhDsLNquRb6++fvMTMhii7dPnUKt+kL31NxCI+rGcWPgv78jkdrkxl6LaWze7e3If
 9KIbqe4OBjnYJaLDdkvXjTOGueWLe/tRA2jOXXkNMSmaYViXqHy/btj75PS42K/9eKoN
 7mDZ0a63RswOk4wNz3KtQDePgWIEBzvV8cczDOLo9LbJUDSgi+TVg9A7Fj9AV+zKMEmU
 7WvKfj9U0FB5YzeF4FK/jy0Jgxs26IypYlzAaZv5eVYh7m6eAk4M4RlTU5KIYwYOXkhf
 OHXQ==
X-Gm-Message-State: AOAM531gqKOEUemTzBbch1K7+8FWerJPqE7GF7DsSbbJDPcfSZfHRcet
 vrh/uCuq3QjedAR5S1j7vM4=
X-Google-Smtp-Source: ABdhPJyj2yoIu1OI5sYIfY/IP84jBUda+jO/u4IzsW4mJwUw1NjKcW5ImRsOWLC2FicYTufKJVMauQ==
X-Received: by 2002:a05:600c:218f:: with SMTP id
 e15mr4169276wme.63.1594907687641; 
 Thu, 16 Jul 2020 06:54:47 -0700 (PDT)
Received: from localhost (ip-37-188-169-187.eurotel.cz. [37.188.169.187])
 by smtp.gmail.com with ESMTPSA id k20sm8457168wmi.27.2020.07.16.06.54.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jul 2020 06:54:46 -0700 (PDT)
Date: Thu, 16 Jul 2020 15:54:45 +0200
From: Michal Hocko <mhocko@kernel.org>
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Subject: Re: [PATCH] binder: Don't use mmput() from shrinker function.
Message-ID: <20200716135445.GN31089@dhcp22.suse.cz>
References: <0000000000001fbbb605aa805c9b@google.com>
 <5ce3ee90-333e-638d-ac8c-cd6d7ab7aa3b@I-love.SAKURA.ne.jp>
 <20200716083506.GA20915@dhcp22.suse.cz>
 <36db7016-98d6-2c6b-110b-b2481fd480ac@i-love.sakura.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <36db7016-98d6-2c6b-110b-b2481fd480ac@i-love.sakura.ne.jp>
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
Cc: mark.rutland@arm.com,
 "open list:ANDROID DRIVERS" <devel@driverdev.osuosl.org>, jolsa@redhat.com,
 Todd Kjos <tkjos@android.com>, linux-mm <linux-mm@kvack.org>,
 alexander.shishkin@linux.intel.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 syzbot <syzbot+e5344baa319c9a96edec@syzkaller.appspotmail.com>,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 peterz@infradead.org, Arve Hjonnevag <arve@android.com>, mingo@redhat.com,
 Joel Fernandes <joel@joelfernandes.org>, namhyung@kernel.org,
 Martijn Coenen <maco@android.com>, Christian Brauner <christian@brauner.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Thu 16-07-20 22:41:14, Tetsuo Handa wrote:
> On 2020/07/16 17:35, Michal Hocko wrote:
[...]
> > But in order for this to happen the shrinker would have to do the last
> > put on the mm. But mm cannot go away from under uprobe_mmap so those two
> > paths cannot race with each other.
> 
> and mm1 != mm2 is possible, isn't it?

OK, I have missed that information. You are right. Can you make this
into the changelog please?
-- 
Michal Hocko
SUSE Labs
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
