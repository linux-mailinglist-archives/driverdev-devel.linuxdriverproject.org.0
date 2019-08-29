Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB55A28BD
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Aug 2019 23:18:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB703873E6;
	Thu, 29 Aug 2019 21:18:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u-SeTRMhMQ2w; Thu, 29 Aug 2019 21:18:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DCD8687302;
	Thu, 29 Aug 2019 21:18:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 21AD61BF41F
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 21:18:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1D3F288510
 for <devel@linuxdriverproject.org>; Thu, 29 Aug 2019 21:18:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cSxcAC3ZDkU4 for <devel@linuxdriverproject.org>;
 Thu, 29 Aug 2019 21:18:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-vk1-f202.google.com (mail-vk1-f202.google.com
 [209.85.221.202])
 by whitealder.osuosl.org (Postfix) with ESMTPS id EE38388507
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 21:18:29 +0000 (UTC)
Received: by mail-vk1-f202.google.com with SMTP id m195so1301265vka.8
 for <devel@driverdev.osuosl.org>; Thu, 29 Aug 2019 14:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=BW1c7IRnWjJoxQBtVPXO6COaVAzbUDcupsRP3+lK6WY=;
 b=DScvmQU+89L+hniqEK44TU04uVyqUiGLL9u5xg2ckht5a7CYd7E2LbeJo2RTqqmNN2
 ZRhaWXhwPL7tKn1cEgAFie5GiGnaKpFKFg7SmCIkGdQekr4q98LOlV4fMxG02PK9uHZC
 WoctCmJJGa70MK8ZZ8Yfnt/l05IgEzhqPuPhAoYrkOSF9AUUOhaxFwWJvtSGuxBCCHtP
 U1fE+DuLVt/48T4ldIdVCUv0RsvyvH8dPdH4mf9fwsVUAKa/eTGbKq5SspOi6yA43ngA
 QZ6+Jkrm7kE1CKneugmB5cVCaLDdPf5wlBnxZhkDwjN+uiCs23wBI3bg+qsQeY9EVGKG
 zqEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=BW1c7IRnWjJoxQBtVPXO6COaVAzbUDcupsRP3+lK6WY=;
 b=b+ORPMo3rPxZlZMUUtXlbTS7u9Tvif6pXYcNivPuDoe7LKhjEU0029dHhhtht1Nsoe
 jIaOq9OfwGB4xhGDRtiAsx1588PqEJhD+HS5BjQpaOjWmPCBc6eoLzybStvzmhzrdA52
 Huj6l5EgHA2pr7zNuvNDAJTmwNFqrSFKnVuALhleP6zZzXtTnRIgVybs0voaVs0YA/0l
 Z+Pc/yglz4oYXgMs3zGR/z5zf2xPZgcXyyxAaEQn9Jbilxty241RDJyAFy4Ni+js5eHO
 +HFbeFtz5FudOyCNBVJ8uFftMAy/tQbZjpoJ9QJ113hi2Y6NHPwlPEam3pKUtimt7CZV
 hA/A==
X-Gm-Message-State: APjAAAUcYKVmsKid8syjQORLh17nbr9KZviI8KqHJ3z/JIfMz/2uu0Yq
 G/0Lm7xLUedinYXPefT0YCn+8czFTJA=
X-Google-Smtp-Source: APXvYqyu46l4onHXaIOlHYncz+2ngOsHkdmb/+FxKLyBUQd7IXHI/mZdOzHaJoQ1YcZ8j38WtB/nO45BCts=
X-Received: by 2002:ab0:6648:: with SMTP id b8mr5538718uaq.99.1567113508553;
 Thu, 29 Aug 2019 14:18:28 -0700 (PDT)
Date: Thu, 29 Aug 2019 14:18:08 -0700
Message-Id: <20190829211812.32520-1-hridya@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.23.0.187.g17f5b7556c-goog
Subject: [PATCH v2 0/4] Add binder state and statistics to binderfs
From: Hridya Valsaraju <hridya@google.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "=?UTF-8?q?Arve=20Hj=C3=B8nnev=C3=A5g?=" <arve@android.com>,
 Todd Kjos <tkjos@android.com>, Martijn Coenen <maco@android.com>, 
 Joel Fernandes <joel@joelfernandes.org>,
 Christian Brauner <christian@brauner.io>, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
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
Cc: Hridya Valsaraju <hridya@google.com>, kernel-team@android.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Currently, the only way to access binder state and
statistics is through debugfs. We need a way to
access the same even when debugfs is not mounted.
These patches add a mount option to make this
information available in binderfs without affecting
its presence in debugfs. The following debugfs nodes
will be made available in a binderfs instance when
mounted with the mount option 'stats=global' or 'stats=local'.

 /sys/kernel/debug/binder/failed_transaction_log
 /sys/kernel/debug/binder/proc
 /sys/kernel/debug/binder/state
 /sys/kernel/debug/binder/stats
 /sys/kernel/debug/binder/transaction_log
 /sys/kernel/debug/binder/transactions


Hridya Valsaraju (4):
  binder: add a mount option to show global stats
  binder: Add stats, state and transactions files
  binder: Make transaction_log available in binderfs
  binder: Add binder_proc logging to binderfs

 drivers/android/binder.c          |  95 ++++++-----
 drivers/android/binder_internal.h |  84 ++++++++++
 drivers/android/binderfs.c        | 255 ++++++++++++++++++++++++++----
 3 files changed, 362 insertions(+), 72 deletions(-)

-- 
2.23.0.187.g17f5b7556c-goog

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
