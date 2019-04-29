Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5128DD72
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Apr 2019 10:13:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7CAA985FFD;
	Mon, 29 Apr 2019 08:13:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3iR4pX+qqf4q; Mon, 29 Apr 2019 08:13:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 725D786B6F;
	Mon, 29 Apr 2019 08:13:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DD2B1BF588
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 08:13:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 59CEC83C6B
 for <devel@linuxdriverproject.org>; Mon, 29 Apr 2019 08:13:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lKhJv+GNTLQO for <devel@linuxdriverproject.org>;
 Mon, 29 Apr 2019 08:13:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CB5E08142D
 for <devel@driverdev.osuosl.org>; Mon, 29 Apr 2019 08:13:04 +0000 (UTC)
Received: from [192.168.178.187] ([109.104.35.134]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MrhHm-1gxjt80B2C-00nhar; Mon, 29 Apr 2019 10:12:50 +0200
Subject: Re: [PATCH] staging: vc04_services: bcm2835-camera: Modify return
 statement.
To: Vatsala Narang <vatsalanarang@gmail.com>, gregkh@linuxfoundation.org
References: <20190429073658.32009-1-vatsalanarang@gmail.com>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <185aa88d-037a-52f6-b1e3-70229d1d708e@i2se.com>
Date: Mon, 29 Apr 2019 10:12:52 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429073658.32009-1-vatsalanarang@gmail.com>
Content-Language: de-DE
X-Provags-ID: V03:K1:ETuuLCQZhg0LcbH5J5l+OOX7ZNomkjssof0/i939kxG3vyvsK3B
 s1VuqakqqAVrDPSnW6izbSKs9JNLDYxqpPNmU7Qux4oFP8C1+x7oThKF4zx87BTOlE6h/oi
 1OHaCMu/WFnLVR16gMPakkvNT6JohMFQTfQmn4hhmHrdcztoC0Pys4rTMgSi2RZjR6c8r2t
 pvtHHj2qJtKdV22m80zGw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:N1XbRiNcjl0=:m3a+qR0kwTG3KzdC2t6bc5
 ixYjwXc1XrQtEUfrVKDb+OMjsNIrKjrjkYicDSku5/WYnMm6yPo3H+yVqIP68kObw5kKUF/D8
 pz2f2oK3PHNnhAv5MUaJmkeKfw8QcjBBaze5mF+dKE8tVVotmONISu9IxDTtZbwcx3LVDSkUP
 k3dHIqhfPbGRRmrwm+gbzUvw5qMZsZa1+jb56tdoYd/MElrPCV2I0IZwDiPr+uR32qzvqn8nC
 1szy5TdhXbg+r4WbqhBXsD+OmIsm3yRGn6fq4pil2Z/ek5a0Iv/8xkPnhTaTwQY28vXvGJ0BZ
 58IyM2MUVH5zraJOzeG498proZ56Yba3Vc8iY2VsDQuyhhnKzrsOES8dzKXhpw2Bepfu44JOh
 sQ0sttwItPsqjdxa5Lqf7kRfPYHwxUinHBT+UIfdAHlWcgBPFF7nC3AiCmLOT1xFrfFI4kDOI
 C19rcbU9jK8ctt3V/BsN+a8pVUx71VDcPButShSDNqPO4WblkOjpLeyYcXZVOBXgTN1+KPXLC
 1NGqJCL+Vt6pFiqymJDIjtZieOm6Daxo7+yYAPcVSJBsn4VZTAcPi7pT0vb1VOtnFjrydlDq3
 vAyOnIADkdLPMS9KAbus4rV0EZXoKzT3zQVAmgF5aNRcnEmWLRfvNgXi2TB44VQmJ27cnYwDE
 S8MUGb+eyw1mHgpKFlxVZc2EkKWbZc7Ils5OvNBySsDmmYDJKv2j1EqiTv6GD0VL+NsPXlZCE
 ECxHjRDjOEqdZothzDdfZeDh8kErXVUZs8wESx92lgyihBqs88dmBtOiYc0=
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
Cc: devel@driverdev.osuosl.org, julia.lawall@lip6.fr, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Hi Vatsala,

Am 29.04.2019 um 09:36 schrieb Vatsala Narang:
> Modify return statement and remove the respective assignment.
>
> Issue found by coccinelle.
>
i didn't check other occurences of the same issue since your last patch 
(27.04.2019).

Could you please verify this is the last one of this type in bcm2835-camera?

Otherwise please send a patch to fixed them all.

Thanks Stefan

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
