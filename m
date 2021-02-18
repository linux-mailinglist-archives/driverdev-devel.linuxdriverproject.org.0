Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4D431EBDD
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Feb 2021 16:54:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4FEEA86992;
	Thu, 18 Feb 2021 15:54:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nr6caClCEP0o; Thu, 18 Feb 2021 15:54:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 61DDB8693C;
	Thu, 18 Feb 2021 15:54:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 03E4F1BF391
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 15:54:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 00FD38691A
 for <devel@linuxdriverproject.org>; Thu, 18 Feb 2021 15:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id klQYkvIsQ7EQ for <devel@linuxdriverproject.org>;
 Thu, 18 Feb 2021 15:54:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A2622868CF
 for <devel@driverdev.osuosl.org>; Thu, 18 Feb 2021 15:54:35 +0000 (UTC)
Date: Thu, 18 Feb 2021 15:54:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
 s=protonmail; t=1613663672;
 bh=0F5bOJE9FkJO0yoXlkGBbjh+9YZ0Gztvth6EcfpFias=;
 h=Date:To:From:Reply-To:Subject:From;
 b=xToeaOB2U/mlybdMyOSkp+EYUaDBraYLq5ouCp0abk8yIVvGn6zF08eO7YDzT3Xai
 wyRfhY9tSr8gQPsu/Jm+hoYN23h5aiphoDVPwcinGq3rEpcqWc3f6gGFfp9ursSYjw
 HvHF9u+ckaX+QW/uwhJi5Hy7qcO84qsj1QfXHMy4=
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
From: Kurt Manucredo <fuzzybritches@protonmail.com>
Subject: [PATCH] fix comparisons - put constant on right side- eudyptula
Message-ID: <20210218155422.7-1-fuzzybritches@protonmail.com>
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
Reply-To: Kurt Manucredo <fuzzybritches@protonmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


Dear linux kernel developers,

for my eudyptula challenge it is required of me to fix a coding style
issue in the staging area in linux-next. I am aware that it is in
general frowned upon when submitting these sorts of patches. However, to
finish my 10th challenge I was tasked to do exactly that. So I ask you
kindly to pull this patch if possible.

Thank you for your time,

kind regards



_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
