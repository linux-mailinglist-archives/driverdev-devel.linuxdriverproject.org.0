Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8485344425E
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Nov 2021 14:26:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0815080EC7;
	Wed,  3 Nov 2021 13:26:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kF-HgnImVpdW; Wed,  3 Nov 2021 13:26:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7612180EAE;
	Wed,  3 Nov 2021 13:26:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F0EC61BF378
 for <devel@linuxdriverproject.org>; Wed,  3 Nov 2021 13:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E074780EA2
 for <devel@linuxdriverproject.org>; Wed,  3 Nov 2021 13:25:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EB9DsCxdttVF for <devel@linuxdriverproject.org>;
 Wed,  3 Nov 2021 13:25:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com
 [IPv6:2a00:1450:4864:20::334])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D727480E95
 for <devel@driverdev.osuosl.org>; Wed,  3 Nov 2021 13:25:48 +0000 (UTC)
Received: by mail-wm1-x334.google.com with SMTP id
 o4-20020a1c7504000000b0032cab7473caso3406700wmc.1
 for <devel@driverdev.osuosl.org>; Wed, 03 Nov 2021 06:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:reply-to:in-reply-to:references:from:date:message-id
 :subject:cc; bh=AT2vVSkbs5Z2AlPH3lVSxISBm4g33VFLgVGD3BjUf+w=;
 b=NssUe6TPfp4UjhVPGhPQ6lbMMxUUbJuTSv1UCWi7suMG5Jn446lxrDNAXwC7vDq0V+
 4DOAQHVVC8lt4aRY3zzO0FgcFFQ29esRnQAL7GA/zclO30WNtz4YP/R6sLRmXNpoAVwk
 HBP0961Uplnh4XG1uHq5jsVcaR+p033Dgaw6vuvIHtI+9I/al9SWjjZsT43tTsSR3TW+
 vJ4PFgHJd7C01Om+3WbUnOQzAR3r+d1Hos6esORPtbmoYJ2A/Sn8pkczTnlpEZ01ioNK
 ilLBS3jUwqHzGlEih+uxzNN+V3AOsO1oynnaNqoKq3E4ReCbjBFG5Ia8pFkjhxOPXR77
 5Zag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:reply-to:in-reply-to:references
 :from:date:message-id:subject:cc;
 bh=AT2vVSkbs5Z2AlPH3lVSxISBm4g33VFLgVGD3BjUf+w=;
 b=wgnW+pde9Gy/hZX6loktulwO3sNGSpRZm161eGcHXNEoSRRQl0+ochfsuJ34Mp0y2U
 YcARuz/xFWMh16wnlAMhYnjARRNkehQO+Mu0GOmSzOsQLHxVY6pDh2yA4xrFiZDBGiln
 UV2evddc/Mgv0pUnrsq5dhbfM5QjfUxoI+yaQer5Vz4m1ThKmZkLJaY1A8d+BhGnf9gU
 d54lWn1JZAOqHs6zUfeBFDH52daocB+ZbX5+YOTu/tsalc+grDlXO/7OczzHJ7++UN1Z
 zb0+PSMjVlU0QjIVSaMXn2ewxP0mZVl8ODi8GHaLc0fkx/UoG0mQ6yNxMBrxib8PHiVV
 WGfQ==
X-Gm-Message-State: AOAM5311iDz610khaGozK+UKh5jlyq0Lm5x/0JMCj/IfwMLJ8puKdzgC
 l5tpvT6MhDsSgxrayZBlRFI46BK7+TI+8Qpojzc=
X-Received: by 2002:a05:600c:a08:: with SMTP id
 z8mt7282616wmp.52.1635945947089; 
 Wed, 03 Nov 2021 06:25:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:adf:c407:0:0:0:0:0 with HTTP;
 Wed, 3 Nov 2021 06:25:46 -0700 (PDT)
In-Reply-To: <CAO8vqisYB0E3PAC_AcRpB1-LF7FphjVs9GprbQ9St0VsREq1Lg@mail.gmail.com>
References: <CAO8vqispfzVbgFsrTqkXDZuHA+UFTJ3T9GzobaMVxkOsmzwgSQ@mail.gmail.com>
 <CAO8vqiu54ZBsOyORAQKUUgfBVKh9VuQNb0Mi_WOwOD29p2JjEA@mail.gmail.com>
 <CAO8vqivC0Bkw+uj8jwoFEpOL7yvtQvAvEoA5QJOJ4q2Oiu8bJw@mail.gmail.com>
 <CAO8vqisYB0E3PAC_AcRpB1-LF7FphjVs9GprbQ9St0VsREq1Lg@mail.gmail.com>
From: israel barney <lmuna521@gmail.com>
Date: Wed, 3 Nov 2021 14:25:46 +0100
Message-ID: <CAO8vqivRH_kDgTbRu9vg3jWWxtSQ88tWwYvhtkLzhghVrSN+cQ@mail.gmail.com>
Subject: Greetings
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
Reply-To: israelbarney287@gmail.com
Cc: israelbarney287@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

do you receive my massage
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
