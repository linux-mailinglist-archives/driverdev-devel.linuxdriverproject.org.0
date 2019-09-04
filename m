Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C4FA858C
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 16:21:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 40900878F1;
	Wed,  4 Sep 2019 14:21:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5wWdWd9l3WOd; Wed,  4 Sep 2019 14:21:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 769CC87909;
	Wed,  4 Sep 2019 14:21:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4F2131BF376
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 14:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4BFFE850E6
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 14:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X9g_URdB5FW7 for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 14:20:44 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9CC8784F24
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 14:20:44 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id v11so3631122qto.13
 for <devel@driverdev.osuosl.org>; Wed, 04 Sep 2019 07:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FqKo9AIGflfwe+nTOQbNK48Ono8rjC9vrryTFd757pg=;
 b=H69Yl7MdXX1X8aGR/Rpg8MdYTCNSKGXy9pVbcMfXsr7L2a0aDmcpaeHqy4GNr7NOsA
 Jw3APKJnYiiHhamaHUMB7yvwCeC+OgirN/UZBSyAj1rwFC6z8t27zjebWUe+DcYOctNo
 EVT9yWtbndHZiIfdoa8cvob9H9KQS6DxJSOHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FqKo9AIGflfwe+nTOQbNK48Ono8rjC9vrryTFd757pg=;
 b=OhP0cUxvXVCyJSBM+iBTxRAYveYKxMnEhtcGcOun9eb/brMbFoJrt75MmGwOU2sNBe
 1Xt65HKgxJ7z9MvpCsL3kf/mmSafelqlebdy5mWxZ3MPZibQAyquUgW1WKWgqerN67yx
 +AOF2QSVdA8npHJLaO6KBWdiYmyAhWov0xD/adtXugKarE7zYHFoyW+wOXmBFxlqEpPa
 CVZF+DpvckQL1SCFfdaF0UBBhA56nhQ/UcbY2TXvegKKqT4S23fd0M0S/7k0X2GQu87Z
 56WZ1qLM+fQqAy8OO1dCuVIukaLFF7OQtA6nSLEaKBqvBw/LFWu/OC5v2DfeuEADwWen
 vhIQ==
X-Gm-Message-State: APjAAAW3699lemEd39gR5J5bR2Y2AHQlUSgBCICxoL4/v2Rz+voTibl5
 e1Yp20AmSnZJnw1hW61jlav4peIzi/aLYeykMe4aSw==
X-Google-Smtp-Source: APXvYqyoXwCJDcZaJ682D0SOtzeHM9+dJjmS5gdSpkrAzHTec9g5Q6F/pbofuoqsHy2yOosIA0EC/QLsJHG91rGp+7o=
X-Received: by 2002:a0c:99ee:: with SMTP id y46mr25823587qve.54.1567606843395; 
 Wed, 04 Sep 2019 07:20:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190903161655.107408-1-hridya@google.com>
 <20190904111934.ya37tlzqjqvt7h6a@wittgenstein>
In-Reply-To: <20190904111934.ya37tlzqjqvt7h6a@wittgenstein>
From: Joel Fernandes <joel@joelfernandes.org>
Date: Wed, 4 Sep 2019 10:20:32 -0400
Message-ID: <CAEXW_YSj5tdykM8txae66zd0jX_aJujrnS4jG=fHWRvCH7aR7w@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Add binder state and statistics to binderfs
To: Christian Brauner <christian.brauner@ubuntu.com>,
 Hridya Valsaraju <hridya@google.com>
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
 kernel-team <kernel-team@android.com>, Todd Kjos <tkjos@android.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Martijn Coenen <maco@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On September 4, 2019 7:19:35 AM EDT, Christian Brauner
<christian.brauner@ubuntu.com> wrote:
>On Tue, Sep 03, 2019 at 09:16:51AM -0700, Hridya Valsaraju wrote:
>> Currently, the only way to access binder state and
>> statistics is through debugfs. We need a way to
>> access the same even when debugfs is not mounted.
>> These patches add a mount option to make this
>> information available in binderfs without affecting
>> its presence in debugfs. The following debugfs nodes
>> will be made available in a binderfs instance when
>> mounted with the mount option 'stats=global' or 'stats=local'.
>>
>>  /sys/kernel/debug/binder/failed_transaction_log
>>  /sys/kernel/debug/binder/proc
>>  /sys/kernel/debug/binder/state
>>  /sys/kernel/debug/binder/stats
>>  /sys/kernel/debug/binder/transaction_log
>>  /sys/kernel/debug/binder/transactions
>
>Acked-by: Christian Brauner <christian.brauner@ubuntu.com>
>
>Btw, I think your counting is off-by-one. :) We usually count the
>initial send of a series as 0 and the first rework of that series as
>v1.
>I think you counted your initial send as v1 and the first rework as v2.

Which is fine. I have done it both ways. Is this a rule written somewhere?

>:)
>

If I am not mistaken, this is Hridya's first set of kernel patches.
Congrats on landing it upstream and to everyone for reviews! (assuming
nothing falls apart on the way to Linus tree).

thanks,

- Joel

[TLDR]
My first kernel patch was 10 years ago to a WiFi driver when I was an
intern at University. I was thrilled to have fixed a bug in network
bridging code in the 802.11s stack. This is always a special moment so
congrats again! ;-)





>Christian
>
>>
>> Hridya Valsaraju (4):
>>   binder: add a mount option to show global stats
>>   binder: Add stats, state and transactions files
>>   binder: Make transaction_log available in binderfs
>>   binder: Add binder_proc logging to binderfs
>>
>>  drivers/android/binder.c          |  95 ++++++-----
>>  drivers/android/binder_internal.h |  84 ++++++++++
>>  drivers/android/binderfs.c        | 255
>++++++++++++++++++++++++++----
>>  3 files changed, 362 insertions(+), 72 deletions(-)
>>
>> --
>> 2.23.0.187.g17f5b7556c-goog
>>
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
