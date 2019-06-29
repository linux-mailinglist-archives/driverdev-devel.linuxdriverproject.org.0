Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1AC5AD11
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Jun 2019 21:31:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E7D0A86BEC;
	Sat, 29 Jun 2019 19:31:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zh+dhYP5xzBB; Sat, 29 Jun 2019 19:31:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C2CBB86ACE;
	Sat, 29 Jun 2019 19:31:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 41C781BF339
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 19:31:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 3618886ACE
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2019 19:31:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NdKqrGuxHISx for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2019 19:31:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AA2AC863BE
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 19:31:34 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id i189so4571066pfg.10
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2019 12:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=iEb4hGSfpAqNO7uZJdmnXtOtykK8ClPPMPCbIhG1ON8=;
 b=VE6wZ8VOd7l4Io/ncKSD6CinMJjB4mZxHgA4WLb71f4vdsPD/tg/FoKkOyU39Krhn3
 V6CnxZGrAb2/ZxxFYKIaqRvcX8b12j211eeRgo2a1Y1V2q/HUGibGahSbbci9BUuKK5I
 VJAzzgRhHaOzmPMoLZkAHsR541syfhcRDd3JodXCTNiuiKrfrMcqnZzVoJaowjYgQNa3
 6AnB9yx57OpCacc4d6FSGgJA9oC3002/9pRooGVWcAZijtDootVX9mNn6FBpbotRAKZC
 J1FkyqPnqNMJnddl5gY0YxlpTDveU3jQC2OscNOSMo0gy4RoqgPNxqGuj6IT90E4rNQh
 dAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=iEb4hGSfpAqNO7uZJdmnXtOtykK8ClPPMPCbIhG1ON8=;
 b=fkW7V9gX+mT2VygkqhAEPV4uRZJDpDx51UWFbF8xFnI6mV5d+1vnVaaADHlx23XVOu
 WLaofFELQvJu/31XxYo54SP4YOp9X0L+qYny+G+qaGH5ijFH8ZH6duJg1LF8+QMWEvH1
 5Btx/WWf2eh1fzV5bJenQEDxmEOGt7hEiMml/TTcH1VMhSZOXCjlByRXcunvw2RzXv5C
 SCg+I519w0RY0txjdR9jk5D+mNMngSg5Td9oWOJmVjqUd6spEDJlXBIste3nbXgd16tI
 +HlelM763J37A49N63pYwN0wr7I9ZU+1XZPZVjXMrMybIS1zhg2AedsRGsyVkwb8t00z
 I36w==
X-Gm-Message-State: APjAAAXsJvZa7KkcLxfb0DEchwBJpZqSuAPrc8nVaPpUf10ci+uE4Qab
 WIReUr6G/k+aAsGiQlUx1ng=
X-Google-Smtp-Source: APXvYqxWdfae6MmNyb6yNZNYxp1WwWM3RZAWqKc1EHoSUIT7b+tkmplOTFpELAanOVtNMVpBcMhHdg==
X-Received: by 2002:a63:df46:: with SMTP id h6mr15545778pgj.181.1561836694077; 
 Sat, 29 Jun 2019 12:31:34 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id 133sm6017202pfa.92.2019.06.29.12.31.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 29 Jun 2019 12:31:33 -0700 (PDT)
Date: Sun, 30 Jun 2019 01:01:27 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Irenge Jules Bashizi <jbi.octave@gmail.com>,
 Ioannis Valasakis <code@wizofe.uk>, Michelle Darcy <mdarcy137@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Colin Ian King <colin.king@canonical.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Madhumitha Prabakaran <madhumithabiw@gmail.com>,
 linux-media@vger.kernel.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging/media/davinci_vpfe: Add null check post kmalloc
Message-ID: <20190629193127.GA18943@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add NULL check post memory operations

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 52397ad..5d8ba35 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1311,6 +1311,11 @@ static int ipipe_g_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
 		to = *(void **)((void *)cfg + module_if->config_offset);
 
 		params = kmalloc(sizeof(*params), GFP_KERNEL);
+		if (!params) {
+			rval = -ENOMEM;
+			goto error;
+		}
+
 		from = (void *)params + module_if->param_offset;
 		size = module_if->param_size;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
