Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4904133D766
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Mar 2021 16:29:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6596483DA8;
	Tue, 16 Mar 2021 15:29:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pUq9GaUGNdnF; Tue, 16 Mar 2021 15:29:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A824D838D3;
	Tue, 16 Mar 2021 15:29:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E9E8E1BF301
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:29:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E69AC82EF0
 for <devel@linuxdriverproject.org>; Tue, 16 Mar 2021 15:29:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FgVm3hUIoINl for <devel@linuxdriverproject.org>;
 Tue, 16 Mar 2021 15:29:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 35EC582ED1
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 15:29:45 +0000 (UTC)
Received: by mail-wm1-x335.google.com with SMTP id g20so10336883wmk.3
 for <devel@driverdev.osuosl.org>; Tue, 16 Mar 2021 08:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=ktNAwTlvxfid44xGOaNhTbS/R1RBktam9MRYoKsMOPY=;
 b=bApAdIJXw+IMYQonD10JnUzZU9PsXhkEiPEL5M7B/dzXpiCZnJUEc9/uwvi243zIsJ
 4rueYD3sxXFf2iiGifsAHTWxDc2qVgQmD+XjrLil0fuHvGd6Y/pdYkFO/qhQx/1vwNZu
 AQZgdY9rrqyyj+lIlFwmrshm7GPipUKIrCWczd14n9Xk4hshtiUazqul72ukhw1IVWtP
 aMdbSPvGI8KVynj/MXrbqQYEKyHjPI76f2s/jTKgIfZ+tHe2zTpRChyTLnNLSmsBTYa9
 BKRwoDt+9iuWKzZ6gmR64/rZ+dLI/EfjKglW1hs2C87bMOK2HnJ7zZxiwIh7SnZnvdPs
 cdNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=ktNAwTlvxfid44xGOaNhTbS/R1RBktam9MRYoKsMOPY=;
 b=WjZcD3NJ7GVyJDyBe5y/Os3OGKDYyUz9lsZQ3rqLxPYIZN0fteaRKw5nkproIsF89l
 3cYiCIRM4smbx4zAFV9Kj8nb6xbYXqWID25FWO2kOJn8+kFlm4NSMLuoTOoUH3BZKuEc
 jIhq62MJLzF7CLGzrH+KW0Xnce8Lk5L0JLyQc0RZpHROWGYOwY4RVjx5M9sMNEYZ4ipg
 NPtjCs5GOKZn9mPaWHKYXD6mz5f9z3gae9VWf3eZIlfQVGsl+cu4OktwpwElBzTNkJi0
 RrDfgVzk5kB7/kiZGUi903cPGMVQyw/EJ415nRoga33ff2S3AmeRUxGB3NvFW5C2Oyfn
 +cdg==
X-Gm-Message-State: AOAM532LaKO18YX3powEQaPM3KwsKtClnjhcloOKRyl7RE5o1XR3nGtz
 /YlDmUHpALOV1DrxVeS0D7EdV9joRRo=
X-Google-Smtp-Source: ABdhPJwuTZnFJLUBP11jsbmi45bNqn/w/uf9WruOmUv2ktLIUNmyxmTCJuD1AUVozmLu4DM1zSs/NQ==
X-Received: by 2002:a1c:a5cb:: with SMTP id o194mr171923wme.129.1615908583486; 
 Tue, 16 Mar 2021 08:29:43 -0700 (PDT)
Received: from agape.jhs ([5.171.72.71])
 by smtp.gmail.com with ESMTPSA id v9sm22798352wrn.86.2021.03.16.08.29.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Mar 2021 08:29:43 -0700 (PDT)
Date: Tue, 16 Mar 2021 16:29:40 +0100
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 00/12] Remove more unused code blocks
Message-ID: <cover.1615907632.git.fabioaiuto83@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove unused code clocks, as required in TODO list:

	find and remove code blocks guarded by never set CONFIG_FOO defines

Fabio Aiuto (12):
  staging: rtl8723bs: remove unused code blocks
    conditioned by never set CONFIG_CMCC_TEST
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_INTERRUPT_BASED_TXBCN*
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_DISABLE_MCS13TO15
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_UPDATE_INDICATE_SEQ_WHILE_PROCESS_ADDBA_REQ
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_VALIDATE_SSID
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_LAYER2_ROAMING_ACTIVE
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_USB_VENDOR*
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_SINGLE_RECV_BUF
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_RX_INDICATE_QUEUE
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_BSD_RX_USE_MBUF
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_R871X_TEST
  staging: rtl8723bs: remove unused code blocks conditioned by never set
    CONFIG_MULTI_VIR_IFACES

 drivers/staging/rtl8723bs/core/rtw_ap.c       | 30 ++------------
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    | 11 -----
 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 19 +--------
 .../staging/rtl8723bs/core/rtw_wlan_util.c    | 15 -------
 .../staging/rtl8723bs/hal/rtl8723b_hal_init.c | 40 -------------------
 drivers/staging/rtl8723bs/include/drv_conf.h  | 10 -----
 drivers/staging/rtl8723bs/include/drv_types.h |  3 --
 .../staging/rtl8723bs/include/osdep_intf.h    |  6 ---
 drivers/staging/rtl8723bs/include/rtw_recv.h  | 17 +-------
 9 files changed, 6 insertions(+), 145 deletions(-)

-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
