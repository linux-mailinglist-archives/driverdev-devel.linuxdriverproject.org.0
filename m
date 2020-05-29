Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 284D41E8857
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 May 2020 22:01:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 846F7261E3;
	Fri, 29 May 2020 20:01:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5osTEcRkdXfm; Fri, 29 May 2020 20:01:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 12DCD25FA7;
	Fri, 29 May 2020 20:01:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 88B231BF5F6
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:01:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 81297893E9
 for <devel@linuxdriverproject.org>; Fri, 29 May 2020 20:01:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pErnWYHizbRP for <devel@linuxdriverproject.org>;
 Fri, 29 May 2020 20:01:00 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 57756893FA
 for <devel@driverdev.osuosl.org>; Fri, 29 May 2020 20:01:00 +0000 (UTC)
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MKKd7-1jQfCx0lln-00Ljen; Fri, 29 May 2020 22:00:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Subject: [PATCH 1/9] staging: media: atomisp: fix incorrect NULL pointer check
Date: Fri, 29 May 2020 22:00:23 +0200
Message-Id: <20200529200031.4117841-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-Provags-ID: V03:K1:+wQ8TKuZZFLgm1wvXX36wv2lc/zCPOC+vLEJsLC5Yfq1Bumz0qA
 guL6S2PS4PsHYgRs6AxROCr3xIHck0FKrrQlrX11NPPgtcKwlYyZm1wIqSETblJZmtl7T5Q
 9Y8Q/hqtBh2TXLhX0n+ATAYM9+2CXXVm5CZ8ebg+cLCQRvcKPwGEPKuqX8s1AX+iPmXYS+5
 LdYgEDEprrkuRJEtVt7AQ==
X-UI-Out-Filterresults: notjunk:1;V03:K0:D1UYBQNkCe8=:PoxgIynrxog2/f95h2DvhW
 KWSbQWmBKPhWkPo92ILPY191ysfIIZbyZrU4X7NvsdDq2ed/cMecws2eRNuCL6tv/BrcExBLi
 JH6uy4mOm9wRdW3jkOdno+QWekRW3rBVYtgKm/aSsCFRagCw73cgZDBut4FPm54VJjJVUsg1D
 HUGUrLtH94rvbXgJ2vJv30x2YzY5QtTh1/4+DJXsLqBXpyBj2e//I5pjXoRey3ZhL09tqlmPR
 O/xnl8gBilayf+tLsYztc1EITkIiyiW0NMgEQx/6/cnmFBsHowomsG2IsZo3EwSMgIMeNLnQ/
 rszbEok0VTx/pVnc0XZJaq5XJJhIPICZ+HGa/Yc5198Y8uizDu8AVs4VsRv5HD0gEV1HouKEd
 dhl7FNNg/LWRP+IrPGZC3kOD/tw59v+zZE/BCKUuupbxdJjzd+fyutM1ykGKpw7KiZLvaweAr
 +bKNWCZAznU9cZzjeNRSwD8jljMMBkfi39NmMh9EzGvaFVJrc7by5yku3hdYOfqeguNgEs55L
 Xz/foeYVwH3w2giLZmXd8hslWjXIX4dROy9CHlE00jgVg83ONq44rpfEZDcNv09I/KJ9mwcW2
 0oencPzEzNRT4cgeGXG00/aq8/1gQHZw0Z7Q+uJ2HU1DOzEX28oxWA1KzshMAGan93YjFI2sM
 9NtGL23eo7y42lTFCqaZMTV+X4y9s+6GaMy9f/ORvb19uJK76ZLrAYtQcpevFBiSQx/JKMKao
 Eno9LVJ9KGHw3apIDZF76sQXrnkP1KhanVMUelCj5LB69uPhmL8ooG5dNl25lYHkugfl1R4VK
 q0ez07EkbKXswv4PRv5/qfsqezpa1ieV/tBy0TKUDCYpQMuiy4=
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
Cc: devel@driverdev.osuosl.org, Arnd Bergmann <arnd@arndb.de>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Sakari Ailus <sakari.ailus@linux.intel.com>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Checking the pointer to a member of a struct against NULL
is pointless as clang points out:

drivers/staging/media/atomisp/pci/atomisp_cmd.c:4278:17: error: address of 'config->info' will always evaluate to 'true'

Check the original pointer instead, which may also be
unnecessary here, but makes a little more sense.

Fixes: 9d4fa1a16b28 ("media: atomisp: cleanup directory hierarchy")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 2 +-
 drivers/staging/media/atomisp/pci/sh_css.c      | 4 ++--
 drivers/staging/media/atomisp/pci/sh_css_sp.c   | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 5be690f876c1..342fc3b34fe0 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -4275,7 +4275,7 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
 		    atomisp_css_get_dvs_grid_info(
 			&asd->params.curr_grid_info);
 
-		if (!&config->info) {
+		if (!config) {
 			dev_err(isp->dev, "ERROR: NULL pointer in grid_info\n");
 			return -EINVAL;
 		}
diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index d77432254a2c..e91c6029c651 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -8534,7 +8534,7 @@ ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
 
 	if (firmware->info.isp.type == IA_CSS_ACC_OUTPUT)
 	{
-		if (&pipe->output_stage)
+		if (pipe)
 			append_firmware(&pipe->output_stage, firmware);
 		else {
 			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
@@ -8542,7 +8542,7 @@ ia_css_pipe_load_extension(struct ia_css_pipe *pipe,
 		}
 	} else if (firmware->info.isp.type == IA_CSS_ACC_VIEWFINDER)
 	{
-		if (&pipe->vf_stage)
+		if (pipe)
 			append_firmware(&pipe->vf_stage, firmware);
 		else {
 			IA_CSS_LEAVE_ERR_PRIVATE(IA_CSS_ERR_INTERNAL_ERROR);
diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.c b/drivers/staging/media/atomisp/pci/sh_css_sp.c
index e574396ad0f4..c0e579c1705f 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_sp.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_sp.c
@@ -1022,7 +1022,7 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 		if (!pipe)
 			return IA_CSS_ERR_INTERNAL_ERROR;
 		ia_css_get_crop_offsets(pipe, &args->in_frame->info);
-	} else if (&binary->in_frame_info)
+	} else if (binary)
 	{
 		pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
 		if (!pipe)
@@ -1036,7 +1036,7 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 			if (!pipe)
 				return IA_CSS_ERR_INTERNAL_ERROR;
 			ia_css_get_crop_offsets(pipe, &args->in_frame->info);
-		} else if (&binary->in_frame_info) {
+		} else if (binary) {
 			pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
 			if (!pipe)
 				return IA_CSS_ERR_INTERNAL_ERROR;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
