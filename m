Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C0A219C52
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Jul 2020 11:31:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68F7787CDE;
	Thu,  9 Jul 2020 09:31:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jHH5FElwNe5L; Thu,  9 Jul 2020 09:31:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3568587AE5;
	Thu,  9 Jul 2020 09:31:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 780C71BF82F
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 09:31:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6F69C8798A
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 09:31:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KI6y2KiH1fN6 for <devel@linuxdriverproject.org>;
 Thu,  9 Jul 2020 09:31:09 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C955E876DB
 for <devel@linuxdriverproject.org>; Thu,  9 Jul 2020 09:31:09 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FB0820663;
 Thu,  9 Jul 2020 09:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1594287069;
 bh=SBSdT/oirfA+H8tmMjAtiCQjl3IXiRZkLwSdmIgYzuw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UvQLzAwnxE2hlTJRbx4nKg5iemkpVu8BPl3RnbTsxM5yfbSI/9GpZaEZ5docqicCX
 kvGH9qg4emgJRyRjgafLczdQrcwqpx4yrjlY3OELnturR0HTgPmN2BsWs9LxzXerhf
 e4pvP+Va/RV6KNF12LMVojqGgVkeqswgZhckQgwo=
Date: Thu, 9 Jul 2020 11:31:16 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Arulraj Devaraj <arulraj.devaraj.honeywell@gmail.com>
Subject: Re: Query related to LMK patches
Message-ID: <20200709093116.GA46441@kroah.com>
References: <CACtrYx8y5GE8iGMz0P4+B8yHpGX9tPwmAMEGi7k8kkvAZAgDmA@mail.gmail.com>
 <CACtrYx90kyZL5waGnKzU_pQ1DZCyeAz3RLufcTJLgLD_CvnTxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACtrYx90kyZL5waGnKzU_pQ1DZCyeAz3RLufcTJLgLD_CvnTxw@mail.gmail.com>
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
Cc: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>,
 devel@linuxdriverproject.org, Riley Andrews <riandrews@android.com>,
 Arve Hjonnevag <arve@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi,

This is the friendly email-bot of Greg Kroah-Hartman's inbox.  I've
detected that you have sent him a direct question that might be better
sent to a public mailing list which is much faster in responding to
questions than Greg normally is.

Please try asking one of the following mailing lists for your questions:

  For udev and hotplug related questions, please ask on the
  linux-hotplug@vger.kernel.org mailing list

  For USB related questions, please ask on the linux-usb@vger.kernel.org
  mailing list

  For PCI related questions, please ask on the
  linux-pci@vger.kernel.org or linux-kernel@vger.kernel.org mailing
  lists

  For serial and tty related questions, please ask on the
  linux-serial@vger.kernel.org mailing list.

  For staging tree related questions, please ask on the
  devel@linuxdriverproject.org mailing list.

  For general kernel related questions, please ask on the
  kernelnewbies@nl.linux.org or linux-kernel@vger.kernel.org mailing
  lists, depending on the type of question.  More basic, beginner
  questions are better asked on the kernelnewbies list, after reading
  the wiki at www.kernelnewbies.org.

  For Linux stable and longterm kernel release questions or patches to
  be included in the stable or longterm kernel trees, please email
  stable@vger.kernel.org and Cc: the linux-kernel@vger.kernel.org
  mailing list so all of the stable kernel developers can be notified.
  Also please read Documentation/process/stable-kernel-rules.rst in the
  Linux kernel tree for the proper procedure to get patches accepted
  into the stable or longterm kernel releases.

If you really want to ask Greg the question, please read the following
two links as to why emailing a single person directly is usually not a
good thing, and causes extra work on a single person:
	http://www.arm.linux.org.uk/news/?newsitem=11
	http://www.eyrie.org/~eagle/faqs/questions.html

After reading those messages, and you still feel that you want to email
Greg instead of posting on a mailing list, then resend your message
within 24 hours and it will go through to him.  But be forewarned, his
email inbox currently looks like:
	912 messages in /home/greg/mail/INBOX/
so it might be a while before he gets to the message.

Thank you for your understanding.

The email triggering this response has been automatically discarded.

thanks,

greg k-h's email bot
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
